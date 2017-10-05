using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yazdir.webSitesi
{
    public partial class uyeEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //VERILERI ALACUZ
            Response.Write("Kullanıcı adım" + Request.QueryString["kullaniciadi"] + "\n");
            Response.Write(Request.QueryString["email"] + "\n");
            Response.Write(Request.QueryString["password1"] + "\n");
            Response.Write(Request.QueryString["password2"] + "\n");


        }
        public void qaq(object sender, EventArgs e)
        {
            Response.Redirect("http://furkanalniak.com");
        }
    }
}
