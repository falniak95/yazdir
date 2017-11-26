using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using MySql.Data.MySqlClient;
using MySql.Data;


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

        #region MySql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion


        public void sessionSil(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/websitesi/test/anaSayfa.aspx");
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
            Literal1.Text += "<center><div class='wrapper' style='margin-top:-20px'>";
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


            int[] jobs = dC.getJobLinks();
            string[] allJobs = dC.getJobListID();

            for (int i = 0; i < dC.totalCount; i++)
            {
                string[] comingData = dC.getCompanyInfo(Convert.ToInt16(allJobs[i]));
                Literal1.Text += "<div class='satir'>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + "> <img src=" + comingData[7] + " width='100' height='50'></a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">"+dC.jobType[i]+"</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobHeader[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobPrice[i]+"</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                DateTime dt = Convert.ToDateTime(dC.jobDate[i]);
                dC.jobDate[i] = string.Format("{0:d/M/yyyy}", dt);
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobDate[i]+"</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobLevel[i]+"</a>";
                Literal1.Text += "</div>";


                Literal1.Text += "</div> ";

                /*<div class="col-md-3" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler burada yer alacak -->
                    </div>*/
            }
            Literal1.Text += "</div>";
            Literal1.Text += "</div></center>";


            DinamikPanel.Controls.Add(Literal1);




            getInformation();

            if (!IsPostBack)
            {
                bnmModal();
            }
        
        }
        //*********************************************************************************
        public void updateInformation(object sender, EventArgs e)
        {
           
            MySqlCommand kmt = new MySqlCommand("update uye_Bireysel set job='"+job.Value +"', mobileNo='" + mobileNo.Value + "' , tcKimlik='" + identityNo.Value + "' , accountNumber='" + accountNumber.Value + "' , gender='" + Request.Form["gender"].ToString() + "' , birthDate='" + birthDate.Value + "', gizliSoru='" + secretQ.Value + "',gizliCevap='"+ secretA.Value +"' where eMail='" + Session["on_eMail"].ToString()+"'", connection);
            MySqlCommand updateFirstLogin = new MySqlCommand("UPDATE uye_Bireysel set firstTime=1 where eMail='" + Session["on_eMail"].ToString() + "'", connection);
            connection.Open();
            kmt.ExecuteNonQuery();           
            updateFirstLogin.ExecuteNonQuery();
            connection.Close();
        }
        //*************************************************************************************

        public void sessionDelete(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/websitesi/test/anaSayfa.aspx");
        }

        public void upd(object sender, EventArgs e)
        {
           // Response.Write("<script>alert('bu nerden geldi şimdi')</script>");

            MySqlCommand komut = new MySqlCommand("update uye_Bireysel set job='"+jobInfo.Value+"', mobileNo='" + mobilPhone.Value + "' , accountNumber='" + account.Value + "'  where eMail='" + Session["on_eMail"].ToString() + "'", connection);
            connection.Open();
            komut.ExecuteNonQuery();
            connection.Close();
        }



        //********************************************************************************************************************
        public void getInformation()
        {

          //  string asd = Session["on_eMail"].ToString();

            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            try
            {

                connection.Open();
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "select * from uye_Bireysel where eMail='" + Session["on_eMail"] + "'";
                MySqlDataReader dataReader = command.ExecuteReader();

                while (dataReader.Read())
                {
                    if (dataReader[17].ToString() != "1")

                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Pop", "openModal();", true);


                    }




                }

                connection.Close();


            }
            catch (Exception xe)
            {
                Response.Write("<script>alert('" + xe.Message + "')</script>");

            }


        }
        //********************************************************************************************************
        public void bnmModal()
        {
            #region Mysql Conn String
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            #endregion

            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel where eMail='" + Session["on_eMail"].ToString() + "'";
            MySqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                name.Value = dataReader["name"].ToString();
                surname.Value = dataReader["surname"].ToString();
                username.Value = dataReader["userName"].ToString();
                gender.Value = dataReader["gender"].ToString();
                mobilPhone.Value = dataReader["mobileNo"].ToString();
                eMail.Value = dataReader["eMail"].ToString();
                account.Value = dataReader["accountNumber"].ToString();
                //     birthDate.Value = dataReader["birthDate"].ToString();
                jobInfo.Value = dataReader["job"].ToString();
            }




            connection.Close();
        }

        //*************************************************************************************************************




        public void changePassword(object sender, EventArgs e)
        {
            if (eskiSifre.Value.ToString() == Session["on_password"].ToString())
            {
                if (newPassword.Value.ToString()==newPasswordAgain.Value.ToString())
                {

                    MySqlCommand kmt = new MySqlCommand("update uye_Bireysel set password='"+newPassword.Value+"' where eMail='" + Session["on_eMail"].ToString() + "'", connection);
                 //   MySqlCommand kmt2 = new MySqlCommand("update uye_Kurumsal set comPassword='" + newPassword.Value + "' where comEmail='" + Session["on_eMail"].ToString() + "'", connection);
                    connection.Open();
                    kmt.ExecuteNonQuery();
                   
                    connection.Close();
                   

                }
                else
                {
                    Response.Write("<script>alert('Yeni Şifre Tekrarı Hatalı Şifre Değiştirilemedi.')</script>");
                    eskiSifre.Value = "";
                    newPassword.Value = "";
                    newPasswordAgain.Value = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Eski Şifre Yanlış Şifre Değiştirilemedi.')</script>");
                eskiSifre.Value = "";
                newPassword.Value = "";
                newPasswordAgain.Value = "";
            }

           

        }
       
        public void newMessage (object sender,EventArgs e)
        {

            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "insert into messages ()";
            command.ExecuteNonQuery();
            connection.Close();
            //Session["on_eMail"] = comMail.Value;
            //Session["on_password"] = password3.Value;
            //Response.Redirect("/webSitesi/test/mainCom.aspx");



        }


//**********************************************************************************************************************

    }
}
