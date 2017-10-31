using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using System.Data;
using System.Text;
using System.IO;

namespace yazdir.webSitesi.test.adminPanel
{
    public partial class confirmationAndReport : System.Web.UI.Page
    {

        System.Web.UI.WebControls.Literal Literal1, Literal2, Literal3;
        databaseConnection dC = new databaseConnection();
        Button myButton;
        protected void Page_Load(object sender, EventArgs e)
        {
             myButton = new Button();
            myButton.Text = "İlan Detayı";
            //  myButton.Click += new EventHandler(clickAdInfo);
            //   myButton.Attributes.Add("OnClick", "clickAdInfo");
            myButton.Attributes.Add("runat", "server");
            myButton.UseSubmitBehavior = false;
            myButton.Click += (s, eventargs) => {
                Response.Write("<script>alert('Buton çalışıyor.')</script>");

            };
            Controls.Add(myButton);


            unConfirmedAds();
            //unconfirmedJobs.Controls.Add(Literal1);
        }
        protected void jobContent(object sender, EventArgs e)
        {
            //content.Text   parametre gönderip i yi alıp contenti göster 
            unConfirmedAds();
        }
        protected void clickAdInfo(object sender,EventArgs e)
        {
            int clickedId = findButtonId((Button)sender);
            Response.Write("<script>alert('Yönetici Eklendi.')</script>");


            // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none", "<script>$('#detayGoruntule').modal('show');</script>", false);
        }
        private int findButtonId(Button button)
        {
            try
            {
                return Convert.ToInt16(button.ID.Substring(5, button.ID.IndexOf("X"))); ;
            }
            catch
            {
                return -1;
            }

        }
        // Modal ismi detayGoruntule
        protected void unConfirmedAds()
        {
            DataSet ds = dC.unConfirmedJobs();
            Literal1 = new Literal();
            Literal1.Text = "";
            Literal1.Text += "<table class='table table-striped' id='tblGrid'>";
            Literal1.Text += "<thead id='tblHead'>";
            Literal1.Text += "<tr>";
            Literal1.Text += "<th>Sıra</th>";
            Literal1.Text += "<th>İlan Başlığı</th>";
            Literal1.Text += "<th>İlanı Veren Şirket</th>";
            Literal1.Text += "<th>İlan İçeriği</th>";//Buraya buton koyup detayı inceleyebiliriz.
            Literal1.Text += "<th>İlan Ücreti</th>";
            Literal1.Text += "<th>İlan Seviyesi</th>";
            Literal1.Text += "<th>İlan Kontratı</th>";//Buraya Buton ekleyip kontrat dosyasına iletilecek.
            Literal1.Text += "<th>İlan İş Türü</th>";
            Literal1.Text += "</tr>";
            Literal1.Text += "</thead>";
            Literal1.Text += "<tbody>";
            string[] adHeader = dC.getUnconfirmedJobsDetail();
            string[] adOwner = dC.adOwner;
            string[] adContent = dC.adContent;
            string[] adPrice = dC.adPrice;
            string[] adLevel = dC.adLevel;
            string[] adContractUrl = dC.adContract;
            string[] adJobType = dC.jobType;
            for (int i = 0; i < dC.unConfirmedJobCount; i++)
            {
                
                myButton.ID = "Button" + i+"X";
               

                Literal1.Text += "<tr><td>" + (i + 1) + "</td>";
                Literal1.Text += "<td>" + adHeader[i] + "</td>";
                Literal1.Text += "<td>" + adOwner[i] + "</td>";//İlgili sahip koduna göre sahibi getir.
             
                //Literal1.Text += myButton.;
                
                StringBuilder sb = new StringBuilder();
                StringWriter writer = new StringWriter(sb);
                HtmlTextWriter htmlWriter = new HtmlTextWriter(writer);
                myButton.RenderControl(htmlWriter);
                

                Literal1.Text += "<td> "+sb.ToString();//Buraya buton eklenip modal acılacak ve ilgili modaldan içerik detayı görüntülenecek.
                Literal1.Text += "</td>";



                Literal1.Text += "<td>" + adPrice[i] + "</td>";
                Literal1.Text += "<td>" + adLevel[i] + "</td>";
                Literal1.Text += "<td>" + adContractUrl[i] + "</td>";//Buraya buton eklenip, kontrat indirme işlemi tetiklenecek.
    //            Literal1.Text += "<td>" + adJobType[i] + "</td>";//İlgili iş koduna göre işi getir.
                Literal1.Text += "</tr>";
            }

            Literal1.Text += "</tr>";
            Literal1.Text += "</tbody>";
            Literal1.Text += "</table>";

            unconfirmedJobs.Controls.Add(Literal1);
        }
    }
}