using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace yazdir.webSitesi.test
{
    public partial class createAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        private string findUserID()
        {
            string userid = string.Empty;
            MySqlCommand command = new MySqlCommand("select id from uye_Kurumsal where comEmail='"+Session["on_eMail"].ToString()+"'", connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader readData = command.ExecuteReader();
            while(readData.Read())
            {
                userid = readData["id"].ToString();
            }
            connection.Close();
            readData.Close();
            return userid;
        }
protected void createAdButton_Click(object sender, EventArgs e)
{
    MySqlCommand command = new MySqlCommand("insert into isler (ad_ownerCompany,ad_header,ad_content,ad_price,ad_level,ad_jobType,ad_date,ad_deadLineLimit) values ('"+findUserID()+"','" + ilanBaslik.Text+"','"+ilanIcerik.Text+"','"+ilanUcret.Text+"','"+ilanZorluk.SelectedItem.Text+"','"+ilanTuru.SelectedItem.Text+ "',CURRENT_TIMESTAMP,'" + ilanLimit.Text+"')", connection);
    if (connection.State == ConnectionState.Closed)
        connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('İlan onay listesine eklendi.')</script>");
        }
}
}
 