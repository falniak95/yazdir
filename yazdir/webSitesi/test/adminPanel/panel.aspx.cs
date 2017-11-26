using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
namespace yazdir.webSitesi.test.adminPanel
{
    public partial class panel : System.Web.UI.Page
    {
        databaseConnection dC = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void logIn(object sender, EventArgs e)
        {
            
            
                bool logged = dC.logInAdmin(uName.Value, pword.Value);
                if(logged)
                {
                Session["admin_uName"] = uName.Value;
                Response.Redirect("/websitesi/test/adminPanel/apanel.aspx");
                    
                }
                else
                {
                    Response.Write("<script>alert('Hatalı giriş yaptınız.')</script>");
                }
            
        }
    }
}