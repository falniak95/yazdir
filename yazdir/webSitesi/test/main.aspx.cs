using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yazdir.webSitesi.test
{
    public partial class main : System.Web.UI.Page
    {

        System.Web.UI.WebControls.Literal Literal1;
        string[] dizi = new string[] { "furkan", "kahraman", "emre", "ali", "tuncer", "kadir", "nuri", "bahadır", "test", "deneme", "e ticaret", "ödevi" };
        protected void Page_Load(object sender, EventArgs e)
        {
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


            

            for (int i = 0; i < dizi.Length; i++)
            {
                Literal1.Text += "<div class='satir'>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dizi[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dizi[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dizi[i];
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += dizi[i];
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
