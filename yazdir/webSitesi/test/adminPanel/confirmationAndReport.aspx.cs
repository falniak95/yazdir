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
using MySql.Data.MySqlClient;
namespace yazdir.webSitesi.test.adminPanel
{
    public partial class confirmationAndReport : System.Web.UI.Page
    {

        System.Web.UI.WebControls.Literal Literal1, Literal2, Literal3;
        databaseConnection dC = new databaseConnection();
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

            //  myButton.Click += new EventHandler(clickAdInfo);
            //   myButton.Attributes.Add("OnClick", "clickAdInfo");


            adsLinked();
         //   unConfirmedAds();
            //unconfirmedJobs.Controls.Add(Literal1);
        }
        protected void jobContent(object sender, EventArgs e)
        {
            //content.Text   parametre gönderip i yi alıp contenti göster 
            unConfirmedAds();
        }

       private string findAdOwnerName(string ownerId)
        {
            string ownerName="";
            MySqlCommand command = new MySqlCommand("select id,comName from uye_Kurumsal where comEmail='" + ownerId+"'", connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                ownerName = reader["comName"].ToString();

            }
            connection.Close();
            reader.Close();
            return ownerName;
        }
        private void adsLinked()
        {
            /*
              Literal1.Text += "<table class='table table-striped' id='tblGrid'>";
            Literal1.Text += "<thead id='tblHead'>";
            Literal1.Text += "<tr>";
            Literal1.Text += "<th></th>";
            Literal1.Text += "<th></th>";
            Literal1.Text += "<th></th>";
            Literal1.Text += "<th></th>";
            Literal1.Text += "<th></th>";
            Literal1.Text += "<th></th>";//Buraya Buton ekleyip kontrat dosyasına iletilecek.
            Literal1.Text += "</tr>";
            Literal1.Text += "</thead>";
            Literal1.Text += "<tbody>";
             * */
            Literal1 = new Literal();
            Literal1.Text = "";
            Literal1.Text += "<center><div class='wrapper' style='margin-top:-20px'>";
            Literal1.Text += " <div class='tablo' >";
            Literal1.Text += "<div class='satir header'>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "Sıra";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Başlığı";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlanı Veren Şirket";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Ücreti";
            Literal1.Text += "</div>";
            Literal1.Text += " <div class='cell'>";
            Literal1.Text += "İlan Seviyesi";
            Literal1.Text += "</div>";
            Literal1.Text += "<div class='cell'>";
            Literal1.Text += "İlan Kontratı";
            Literal1.Text += "</div>";
            Literal1.Text += "</div>";

          
            adHeader = dC.getUnconfirmedJobsDetail();
            adOwner = dC.adOwner;
            adContent = dC.adContent;
            adPrice = dC.adPrice;
            adLevel = dC.adLevel;
            adContractUrl = dC.adContract;
            adJobType = dC.jobType;
            adid = dC.adID;
            for (int i = 0; i < dC.unConfirmedJobCount; i++)
            {
                Literal1.Text += "<div class='satir'>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">     " + (i + 1) +"</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">  " + adHeader[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">  " + findAdOwnerName(adOwner[i]) + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">  " + adPrice[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">  " + adLevel[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/confirmDetail.aspx?id=" + adid[i] + ">  " + adContractUrl[i] + "</a>";
                Literal1.Text += "</div>";


                Literal1.Text += "</div> ";

                /*<div class="col-md-3" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler burada yer alacak -->
                    </div>*/
            }
            Literal1.Text += "</div>";
            Literal1.Text += "</div></center>";
            unconfirmedJobs.Controls.Add(Literal1);
        }
        string[] adHeader, adOwner, adContent, adPrice, adLevel, adContractUrl, adJobType,adid;
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
            Literal1.Text += "<th>İlan Ücreti</th>";
            Literal1.Text += "<th>İlan Seviyesi</th>";
            Literal1.Text += "<th>İlan Kontratı</th>";//Buraya Buton ekleyip kontrat dosyasına iletilecek.
            Literal1.Text += "</tr>";
            Literal1.Text += "</thead>";
            Literal1.Text += "<tbody>";
           adHeader = dC.getUnconfirmedJobsDetail();
            adOwner = dC.adOwner;
            adContent = dC.adContent;
           adPrice = dC.adPrice;
             adLevel = dC.adLevel;
            adContractUrl = dC.adContract;
            adJobType = dC.jobType;
            for (int i = 0; i < dC.unConfirmedJobCount; i++)
            {
                
                

                Literal1.Text += "<a href=/websitesi/test/adminPanel/jobDetail.aspx?id=" + adOwner[i] + ">  <td>" + (i + 1) + "</td></a>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/jobDetail.aspx?id=" + adOwner[i] + ">   <td>" + adHeader[i] + "</td></a>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/jobDetail.aspx?id=" + adOwner[i] + ">   <td>" + findAdOwnerName(adOwner[i]) + "</td></a>";//İlgili sahip koduna göre sahibi getir.
             
                
                Literal1.Text += "<a href=/websitesi/test/adminPanel/jobDetail.aspx?id=" + adOwner[i] + ">   <td>" + adPrice[i] + "</td></a>";
                Literal1.Text += "<a href=/websitesi/test/adminPanel/jobDetail.aspx?id=" + adOwner[i] + ">  <td>" + adLevel[i] + "</td></a>";
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