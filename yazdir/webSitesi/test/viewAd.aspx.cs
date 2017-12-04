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
    public partial class viewAd : System.Web.UI.Page
    {
        
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';Convert Zero Datetime=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
             getir();
        }

            
        public void getir()
        {
            MySqlCommand command = new MySqlCommand("select id,ad_header,ad_content,ad_price,ad_jobType,ad_date from isler where ad_ownerCompany=(select id from uye_Kurumsal where comEmail='"+ Session["on_eMail"] + "')", connection);
            connection.Open();
            MySqlDataReader dataRead = command.ExecuteReader();
            
          
            liste.DataSource = dataRead;
            liste.DataBind();
            connection.Close();
            dataRead.Close();
        }
        public void liste_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "duzenle")
            {

                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                string baslikTxt= ((TextBox)e.Item.FindControl("konuT")).Text;
                string icerikTxt = ((TextBox)e.Item.FindControl("acıklamaT")).Text;
                string fiyatTxt = ((TextBox)e.Item.FindControl("fiyatT")).Text;
                string isTürüTxt = ((TextBox)e.Item.FindControl("isTürüT")).Text;
                string UpdateBtn = ((LinkButton)e.Item.FindControl("Duzenle")).ToolTip;
                string gidecekID = UpdateBtn;
                MySqlCommand command = new MySqlCommand("update isler set  ad_header='" + baslikTxt  + "', ad_content='" + icerikTxt + "',ad_price='" + fiyatTxt+ "',ad_jobType='" + fiyatTxt + "',ad_date=CURRENT_TIMESTAMP,confirm=0  where id=" + gidecekID, connection);
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}