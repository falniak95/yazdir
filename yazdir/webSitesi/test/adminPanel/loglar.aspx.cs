using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using MySql.Data.MySqlClient;
namespace yazdir.webSitesi.test.adminPanel
{
    public partial class loglar : System.Web.UI.Page
    {


        #region ConnectionString 
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        System.Web.UI.WebControls.Literal Literal1;
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand("select * from log where type=0",connection);
            if (connection.State == System.Data.ConnectionState.Closed)
                connection.Open();

            Literal1 = new Literal();
            Literal1.Text = "";
            MySqlDataReader logReader = command.ExecuteReader();
            while(logReader.Read())
            {
                Literal1.Text += logReader["who"].ToString() + " tarafından, " + logReader["date"].ToString() + " tarihinde ;" + logReader["log"].ToString()+"<br>";
           
            }


            myPanel.Controls.Add(Literal1);
            logReader.Close();
            connection.Close();
        }
    }
}