using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;

namespace yazdir.webSitesi.test.adminPanel
{
    public partial class confirmDetail : System.Web.UI.Page
    {
        string adId;
        System.Web.UI.WebControls.Literal Literal1, Literal2, Literal3;
        databaseConnection dC = new databaseConnection();
        string adHeader, adOwner, adContent, adPrice, adLevel, adContractUrl, adJobType, adid;

        protected void onayButton_Click(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand("update isler set confirm=1 where id="+adId , connection);

            if (connection.State == ConnectionState.Closed)
                connection.Open();
            command.ExecuteNonQuery();
        }

        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                adId = Request.QueryString["id"].ToString();
                getAdData();
            }
        }
        private void getAdData()
        {
            MySqlCommand command = new MySqlCommand("select * from isler where id=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                adHeader = reader["ad_header"].ToString();
                adOwner = findAdOwnerName(reader["ad_ownerCompany"].ToString());
                adPrice = reader["ad_price"].ToString();
                adLevel = reader["ad_level"].ToString();
                adContractUrl = reader["ad_contract"].ToString();
            }
            connection.Close();
            reader.Close();
            ilanBaslik.Text = adHeader;
            ilanSahibi.Text = adOwner;
            ilanUcret.Text = adPrice;
            ilanSeviyesi.Text = adLevel;
            ilanKontratı.Text ="<a href="+adContractUrl+"> Kontrat için tıkla</a>";
        }
        private string findAdOwnerName(string ownerId)
        {
            string ownerName = "";
            MySqlCommand command = new MySqlCommand("select id,comName from uye_Kurumsal where id=" + ownerId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ownerName = reader["comName"].ToString();

            }
            connection.Close();
            reader.Close();
            return ownerName;
        }
    }
}