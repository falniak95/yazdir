using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using yazdir.webSitesi.test.Libraries;
namespace yazdir.webSitesi.test
{
    public partial class createNewsCom : System.Web.UI.Page
    {
        private string userID;
        #region MySql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            userID = Session["on_eMail"].ToString();
        }
        databaseConnection dC = new databaseConnection();
        protected void haberGonder_Click(object sender, EventArgs e)
        {
            string userConvertedID = dC.findCompanyId(userID);
            MySqlCommand command = new MySqlCommand("insert into news (date,header,content,ownerId,confirm) values ('" +DateTime.Now + "','" + haberBaslikTxt.Text + "','" + haberIcerikTxt.Text + "',"+ userConvertedID + ",0)", connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('Haber yayınlanmadan önce yönetici onayına sunulacaktır.')</script>");
        }
    }
}