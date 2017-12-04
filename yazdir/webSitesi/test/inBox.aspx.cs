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
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
        public int Count;
        public int[] countID;
        public string[] count;
        public string ses = "test@test";
        protected void Page_Load(object sender, EventArgs e)
        {

            getir();

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
        public void getir ()
        {
            MySqlCommand command = new MySqlCommand("select senderID,header,content from messages", connection);
            connection.Open();
            MySqlDataReader dataRead = command.ExecuteReader();
            list.DataSource = dataRead;
            list.DataBind();
            connection.Close();
        }

        //public int[] _gonderenID()
        //{



        //    MySqlCommand countCommand = new MySqlCommand("select COUNT(reveiverID) from messages where receiverID=(select id from uye_Bireysel where eMail='" + ses + "')", connection);
        //    connection.Open();
        //    Count = Convert.ToInt16(countCommand.ExecuteScalar());
        //    connection.Close();
        //    countID = new int[Count];

        //    int c = 0;
        //    MySqlCommand command = new MySqlCommand("select senderID from messages where receiverID=(select id from uye_Bireysel where eMail='" + ses + "')", connection);
        //    connection.Open();
        //    MySqlDataReader dataRead = command.ExecuteReader();
        //    while (dataRead.Read())
        //    {
        //        countID[c] = Convert.ToInt16(dataRead["senderID"]);
        //        c++;
        //    }
        //    dataRead.Close();
        //    connection.Close();


        //    return countID;
        //}
        //public string _gonderenAdi()
        //{
        //    string asd = "";
        //    MySqlCommand command = new MySqlCommand("select userName from uye_Bireysel where id='" + countID[9] + "'", connection);
        //    connection.Open();


        //    return asd;
        //}


    }
}