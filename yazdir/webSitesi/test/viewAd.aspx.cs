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
            getir();
        }
        
        public void getir()
        {
            MySqlCommand command = new MySqlCommand("select ad_header,ad_content,ad_price,ad_jobType,ad_date from isler where ad_ownerCompany=(select id from uye_Kurumsal where comEmail='"+ Session["on_eMail"] + "')", connection);
            connection.Open();
            MySqlDataReader dataRead = command.ExecuteReader();
            list.DataSource = dataRead;
            list.DataBind();
            connection.Close();
        }
    }
}