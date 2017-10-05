using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;

namespace yazdir.webSitesi.test
{
    public partial class main : System.Web.UI.Page
    {
        
        System.Web.UI.WebControls.Literal Literal1;
        databaseConnection dC = new databaseConnection();
        string[] dizi = new string[] { "furkan", "kahraman", "emre", "ali", "tuncer", "kadir", "nuri", "bahadır", "test", "deneme", "e ticaret", "ödevi" };
        private void seperateJobs()
        {
           
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = dC.getJobs();
            //try
            //{
            //    if (Session["on_eMail"].ToString() == "" || Session["on_eMail"].ToString() == null)
            //        Response.Redirect("/websitesi/test/404.html");
            //}
            //catch
            //{
            //    Response.Redirect("/websitesi/test/404.html");
            //}

            selamlama.InnerText = "Merhaba " + Session["on_eMail"];
            Literal1 = new Literal();
            Literal1.Text = "";
            Literal1.Text += "<div class='wrapper' style='margin-top:-20px'>";
            Literal1.Text += " <div class='tablo' >";
            Literal1.Text += "<div class='satir header'>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "Kurum";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Türü";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Başlığı";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "Fiyat";
            Literal1.Text += "</div>";
            Literal1.Text += " <div class='cell'>";
            Literal1.Text += "İlan Tarihi";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Detayı";
            Literal1.Text += "</div>";
            Literal1.Text += "</div>";



           string[] allJobs = dC.getJobListID();

            for (int i = 0; i < dC.totalCount; i++)
            {
                string[] comingData = dC.getCompanyInfo(Convert.ToInt16(allJobs[i]));
                Literal1.Text += "<div class='satir'>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<img src=" + comingData[7] + " width='100' height='50'>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dC.jobType[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dC.jobHeader[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dC.jobPrice[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                DateTime dt = Convert.ToDateTime(dC.jobDate[i]);
                dC.jobDate[i] = string.Format("{0:d/M/yyyy}", dt);
                Literal1.Text += dC.jobDate[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dC.jobLevel[i];
                Literal1.Text += "</div>";


                Literal1.Text += "</div>";

                /*<div class="col-md-3" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler burada yer alacak -->
                    </div>*/
            }
            Literal1.Text += "</div>";
            Literal1.Text += "</div>";


            DinamikPanel.Controls.Add(Literal1);






        }


    }
}
