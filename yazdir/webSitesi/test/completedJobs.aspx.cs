using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;

namespace yazdir.webSitesi.test
{
    public partial class completedJobs : System.Web.UI.Page
    {
        #region MysqlConnection
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");

        #endregion

        databaseConnection dC = new databaseConnection();
        completedJobsClass cJC = new completedJobsClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getAllNews();

        }
        private List<completedJobsClass> changeWithUserName(List<completedJobsClass> Job)
        {
            foreach (completedJobsClass job_ in Job)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select name,surname,eMail from uye_Bireysel where id=" + job_.jobWorkerID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    job_.jobWorkerName = reader["name"].ToString() + " " + reader["surname"].ToString()+"("+ reader["eMail"].ToString()+")";

                }
                reader.Close();
                connection.Close();
            }
            return Job;
        }
        private void getAllNews()
        {
            string _owner = dC.findCompanyId(Session["on_eMail"].ToString());
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand command = new MySqlCommand("select * from doneJobs where jobOwnerID="+_owner+" and jobProgress=100", connection);
       //     MySqlCommand command = new MySqlCommand("select * from doneJobs where jobOwnerID=3 and jobProgress=100", connection);
            MySqlDataReader reader = command.ExecuteReader();
            List<completedJobsClass> jobList = new List<completedJobsClass>();
            while (reader.Read())
            {
                cJC = new completedJobsClass();
                cJC.jobID = reader["jobId"].ToString();
                cJC.isPaid = reader["isPaid"].ToString();
                cJC.workerPoint = reader["workerPoint"].ToString();
                cJC.jobWorkerID = reader["jobWorkerID"].ToString();


                jobList.Add(cJC);

            }
            reader.Close();
            connection.Close();
            jobList = changeWithUserName(jobList);
            tamamlanmisIslerRepeater.DataSource = jobList;
            tamamlanmisIslerRepeater.DataBind();

        }

        protected void tamamlanmisIslerRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName== "puanVerOdemeYap")
            {
                Button senderButton = (Button)e.Item.FindControl("confirmAll");
                TextBox pointTxt = (TextBox)e.Item.FindControl("kullaniciPuaniTxt");
                string jobId = pointTxt.AccessKey;
                string workerId = pointTxt.ToolTip;
                if (Convert.ToInt16(pointTxt.Text) > 0 && Convert.ToInt16(pointTxt.Text) <= 5)
                {
                    MySqlCommand command = new MySqlCommand("update doneJobs set isPaid=1, workerPoint=" + pointTxt.Text + " where jobId=" + jobId + " and jobWorkerID=" + workerId, connection);
                    if (connection.State == ConnectionState.Closed)
                        connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("/webSitesi/test/completedJobs.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Gireceğiniz puan 0 ile 5 aralığında olmalıdır.')</script>");
                }

            }
        }
        string isSahibi, kullaniciPuan, kullaniciPuaniTxt, girilenPuan;
        Label kllniciPuanLabel, ztnYapilmis;
        Button confirmButton;
        TextBox KllaniciTxt;
        protected void tamamlanmisIslerRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
             isSahibi = ((Label)e.Item.FindControl("isSahibi")).Text;
             kullaniciPuan = ((Label)e.Item.FindControl("kullaniciPuan")).Text;
             kllniciPuanLabel = ((Label)e.Item.FindControl("kullaniciPuan"));
         //    kullaniciPuaniTxt = ((TextBox)e.Item.FindControl("kullaniciPuan")).Text;
             confirmButton = ((Button)e.Item.FindControl("confirmAll"));
             ztnYapilmis = ((Label)e.Item.FindControl("zatenYapilmis"));
             KllaniciTxt = ((TextBox)e.Item.FindControl("kullaniciPuaniTxt"));
             girilenPuan = ((TextBox)e.Item.FindControl("kullaniciPuaniTxt")).Text;
            if (kullaniciPuan!="-1")
            {
                ztnYapilmis.Visible = true;
                kllniciPuanLabel.Visible = true;
            }
            else
            {
                KllaniciTxt.Visible = true;
                confirmButton.Visible = true;
            }
        }
    }
}