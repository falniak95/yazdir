using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using yazdir.webSitesi.test.Libraries;
namespace yazdir.webSitesi.test
{
    public partial class inspectNews : System.Web.UI.Page
    {
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");

        #endregion
        databaseConnection dC = new databaseConnection();
        protected void clickedUpdate(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string gidecekID = clickedButton.ToolTip;
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand command = new MySqlCommand("update news set confirm=1 where id=" + gidecekID, connection);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("webSitesi/test/inspectNews.aspx");
            
        }
        protected void clickedDelete(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string gidecekID = clickedButton.ToolTip;
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand command = new MySqlCommand("delete from news where id=" + gidecekID, connection);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("webSitesi/test/inspectNews.aspx");

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getAllNews();
        }
        private List<haber> changeWithUserName(List<haber> haber)
        {
            foreach (haber haber_ in haber)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select comName from uye_Kurumsal where id=" + haber_.haberSahip, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    haber_.haberSahipIsim = reader["comName"].ToString();

                }
                reader.Close();
                connection.Close();
            }
            return haber;
        }
        private haber _haber = new haber();
        private void getAllNews()
        {
            string _owner = dC.findCompanyId(Session["on_eMail"].ToString());
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand command = new MySqlCommand("select * from news where ownerID="+ _owner + "order by date desc", connection);
            MySqlDataReader reader = command.ExecuteReader();
            List<haber> newsList = new List<haber>();
            while (reader.Read())
            {
                _haber = new haber();
                _haber.haberID = reader["id"].ToString();
                _haber.haberBaslik = reader["header"].ToString();
                _haber.haberIcerik = reader["content"].ToString();
                _haber.haberOnay = reader["confirm"].ToString();
                _haber.haberZaman = reader["date"].ToString();
                _haber.haberSahip = reader["ownerID"].ToString();
                newsList.Add(_haber);

            }
            reader.Close();
            connection.Close();
            newsList = changeWithUserName(newsList);
            ilanlarimRepeater.DataSource = newsList;
            ilanlarimRepeater.DataBind();

        }
    }
}