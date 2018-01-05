using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using MySql.Data.MySqlClient;
using MySql.Data;
namespace yazdir.webSitesi.test
{
    public partial class inBox : System.Web.UI.Page
    {
        //System.Web.UI.WebControls.Literal Literal2;
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';convert zero datetime=True;");
        public int Count;
        public int[] countID;
        public string[] count;
        public string ses = "test@test";
        databaseConnection dC = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            lType= findMyType();
            getAllNews();

            //Literal2 = new Literal();
            //Literal2.Text = "";
            //Literal2.Text += "<center><div class='wrapper' style='margin-top:-20px'>";
            //Literal2.Text += " <div class='tablo' >";
            //Literal2.Text += "<div class='satir header'>";
            //Literal2.Text += "<div class='cell'>";
            //Literal2.Text += "Kullanıcı Adı";
            //Literal2.Text += "</div>";
            //Literal2.Text += "<div class='cell'>";
            //Literal2.Text += "Konu";
            //Literal2.Text += "</div>";
            //Literal2.Text += " <div class='cell'>";
            //Literal2.Text += "         ";
            //Literal2.Text += "</div>";
            //Literal2.Text += " <div class='cell'>";
            //Literal2.Text += "         ";
            //Literal2.Text += "</div>";
            //Literal2.Text += " <div class='cell'>";
            //Literal2.Text += "Tarihi";
            //Literal2.Text += "</div>";
            //Literal2.Text += " <div class='cell'>";
            //Literal2.Text += "      ";
            //Literal2.Text += "</div>";
            //Literal2.Text += " <div class='cell'>";
            //Literal2.Text += "      ";
            //Literal2.Text += "</div>";
            //Literal2.Text += "<div class='cell'>";
            //Literal2.Text += "Mesaj içeriği";
            //Literal2.Text += "</div>";
            //Literal2.Text += "</div>";



            //Literal2.Text += "</div>";
            //Literal2.Text += "</div></center>";

            //DinamikPanel.Controls.Add(Literal2);
        }
        private string findMyType()
        {
            if (Session["loginType"].ToString() == "1")
                return "1";
            else
                return "0";
        }
        public string lType;

        private List<myMessages> _changeWithUserName(List<myMessages> mesajlar)
        {
            foreach (myMessages mesaj_ in mesajlar)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select name,surname from uye_Bireysel where id=" + mesaj_.messageSenderID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if (mesaj_.messageSenderType == "1")
                        mesaj_.messageSenderName = reader["name"].ToString()+" "+ reader["surname"].ToString();

                }
                reader.Close();
                connection.Close();
            }
            return mesajlar;
        }
    
        private List<myMessages> changeWithUserName(List<myMessages> mesajlar)
        {
            foreach (myMessages mesaj_ in mesajlar)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select comName from uye_Kurumsal where id=" + mesaj_.messageSenderID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if(mesaj_.messageSenderType == "0")
                        mesaj_.messageSenderName = reader["comName"].ToString();

                }
                reader.Close();
                connection.Close();
            }
            return mesajlar;
        }
        private myMessages _mesaj = new myMessages();
        string _owner;
        private void getAllNews()
        {
            if(lType=="0")
             _owner = dC.findCompanyId(Session["on_eMail"].ToString());
            else
            _owner= dC.findUserId(Session["on_eMail"].ToString());
            //
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            //
            lType = findMyType();

         //   string myID = dC.findUserId(Session["on_eMail"].ToString());
            MySqlCommand command = new MySqlCommand("select * from messages where receiverID=" + _owner + " and receiverColumn=" + lType, connection);
            MySqlDataReader reader = command.ExecuteReader();
            List<myMessages> newsList = new List<myMessages>();
            while (reader.Read())
            {
                _mesaj = new myMessages();
                _mesaj.messageContent = reader["content"].ToString();
                _mesaj.messageSenderID = reader["senderID"].ToString();
                _mesaj.messageSenderType = reader["senderColumn"].ToString();
                _mesaj.messageDate = reader["date"].ToString();
                _mesaj.messageID = reader["id"].ToString();
                _mesaj.messageHeader = reader["header"].ToString();


                newsList.Add(_mesaj);

            }
            reader.Close();
            connection.Close();
            newsList = changeWithUserName(newsList);
            newsList = _changeWithUserName(newsList);
            liste.DataSource = newsList;
            liste.DataBind();

        }

    }
}