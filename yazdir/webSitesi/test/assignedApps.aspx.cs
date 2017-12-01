using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;

namespace yazdir.webSitesi.test
{
    public partial class assignedApps : System.Web.UI.Page
    {
        Literal assignedTable;
        databaseConnection dC = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            assignedTable = new Literal();
            assignedTable.Text = "";
            assignedTable.Text += "<center><div class='wrapper' style='margin-top:-20px'>";
            assignedTable.Text += " <div class='tablo' >";
            assignedTable.Text += "<div class='satir header'>";
            assignedTable.Text += "<div class='cell'>";
            assignedTable.Text += "Kurum";
            assignedTable.Text += "</div>";
            assignedTable.Text += "<div class='cell'>";
            assignedTable.Text += "İlan Türü";
            assignedTable.Text += "</div>";
            assignedTable.Text += "<div class='cell'>";
            assignedTable.Text += "İlan Başlığı";
            assignedTable.Text += "</div>";
            assignedTable.Text += "<div class='cell'>";
            assignedTable.Text += "Fiyat";
            assignedTable.Text += "</div>";
            assignedTable.Text += " <div class='cell'>";
            assignedTable.Text += "İlan Tarihi";
            assignedTable.Text += "</div>";
            assignedTable.Text += "<div class='cell'>";
            assignedTable.Text += "İlan Detayı";
            assignedTable.Text += "</div>";
            assignedTable.Text += " <div class='cell'>";
            assignedTable.Text += "İş Detayı";
            assignedTable.Text += "</div>";
            assignedTable.Text += "</div>";

            string userID = dC.findUserId(Session["on_eMail"].ToString());
            int[] jobs = dC.getAssignedJobLinks(userID);
            string[] allJobs = dC.getAssignedJobList(userID);

            for (int i = 0; i < dC.totalCount; i++)
            {
                string[] comingData = dC.getCompanyInfo(Convert.ToInt16(allJobs[i]));
                assignedTable.Text += "<div class='satir'>";
                assignedTable.Text += "<div class='cell'>";
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + "> <img src=" + comingData[7] + " width='100' height='50'></a>";
                assignedTable.Text += "</div>";
                assignedTable.Text += "<div class='cell'>";
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + ">" + dC.jobType[i] + "</a>";
                assignedTable.Text += "</div>";
                assignedTable.Text += "<div class='cell'>";
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + ">" + dC.jobHeader[i] + "</a>";
                assignedTable.Text += "</div>";
                assignedTable.Text += "<div class='cell'>";
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + ">" + dC.jobPrice[i] + "</a>";
                assignedTable.Text += "</div>";
                assignedTable.Text += "<div class='cell'>";
                DateTime dt = Convert.ToDateTime(dC.jobDate[i]);
                dC.jobDate[i] = string.Format("{0:d/M/yyyy}", dt);
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + ">" + dC.jobDate[i] + "</a>";
                assignedTable.Text += "</div>";
                assignedTable.Text += "<div class='cell'>";
                assignedTable.Text += "<a href=/websitesi/test/assignedJobdetails.aspx?id=" + jobs[i] + ">" + dC.jobLevel[i] + "</a>";
                assignedTable.Text += "</div>";


                assignedTable.Text += "</div> ";

                /*<div class="col-md-3" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler bur   a yer alacak -->
                    </div>*/
            }
            assignedTable.Text += "</div>";
            assignedTable.Text += "</div></center>";


            DinamikPanel.Controls.Add(assignedTable);
        }
    }
}