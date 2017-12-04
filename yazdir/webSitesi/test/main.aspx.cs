﻿using System;
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
        protected void AlinmisIsler_Click(object sender,EventArgs e)
        {
            Response.Redirect("/websitesi/test/assignedApps.aspx");
        }
        private void isListesiniGetir()
        {
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
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobType[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobHeader[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobPrice[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                DateTime dt = Convert.ToDateTime(dC.jobDate[i]);
                dC.jobDate[i] = string.Format("{0:d/M/yyyy}", dt);
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobDate[i] + "</a>";
                Literal1.Text += "</div>";
                Literal1.Text += "<div class='cell'>";
                Literal1.Text += "<a href=/websitesi/test/jobdetail.aspx?id=" + jobs[i] + ">" + dC.jobLevel[i] + "</a>";
                Literal1.Text += "</div>";


                Literal1.Text += "</div> ";

                /*<div class="col-md-3" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler burada yer alacak -->
                    </div>*/
            }
            Literal1.Text += "</div>";
            Literal1.Text += "</div></center>";
        }
        private List<haber> changeWithUserName(List<haber> haber)
        {
            foreach (haber haber_ in haber)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select comName from uye_Kurumsal where id="+haber_.haberSahip, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while(reader.Read())
                {
                    haber_.haberSahipIsim = reader["comName"].ToString();

                }
                reader.Close();
                connection.Close();
            }
            return haber;
        }
        private haber _haber = new haber();
        private void duvarGetir()
        {
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand command = new MySqlCommand("select * from news where confirm=1 order by date desc",connection);
            MySqlDataReader reader = command.ExecuteReader();
            List<haber> newsList = new List<haber>();
            while(reader.Read())
            {
                _haber = new haber();
                _haber.haberID = reader["id"].ToString();
                _haber.haberBaslik = reader["header"].ToString();
                _haber.haberIcerik= reader["content"].ToString();
                _haber.haberOnay= reader["confirm"].ToString();
                _haber.haberZaman= reader["date"].ToString();
                _haber.haberSahip= reader["ownerID"].ToString();
                newsList.Add(_haber);
                
            }
            reader.Close();
            connection.Close();
            newsList = changeWithUserName(newsList);
            duvarRepeater.DataSource = newsList;
            duvarRepeater.DataBind();

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
            isListesiniGetir();


            DinamikPanel.Controls.Add(Literal1);
            duvarGetir();
            



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
       public void hsb(object sender,EventArgs e)
        {
           if(Password1.Value==Password2.Value)
            {
                MySqlCommand kmt = new MySqlCommand("select password FROM uye_Bireysel WHERE eMail='"+ Session["on_eMail"].ToString() + "'", connection);
                connection.Open();
                kmt.ExecuteNonQuery();
                int sifre= Convert.ToInt32(kmt.ExecuteScalar());
                connection.Close();
                if (sifre== Convert.ToInt32(Password1.Value))
                {
                    MySqlCommand kmt2 = new MySqlCommand("delete from uye_Bireysel where eMail='" + Session["on_eMail"] + "'",connection);
                    connection.Open();
                   // kmt2.CommandText=
                    kmt2.ExecuteNonQuery();
                    connection.Close();
                    Session.Clear();
                    Response.Redirect("/webSitesi/test/anaSayfa.aspx");
                    

                }
            }
        }
        public void newMessage(object sender, EventArgs e)
        {
           
            try
            {
                //****************************************************************************
                connection.Open();
                MySqlCommand comman = new MySqlCommand();
                MySqlCommand commanK = new MySqlCommand();
                MySqlCommand commanSession = new MySqlCommand();
                
                comman.Connection = connection;
                commanK.Connection = connection;
                commanSession.Connection = connection;
                

               commanSession.CommandText="select count(*) from uye_Bireysel where eMail='"+ Session["on_eMail"]+"'";
                commanK.CommandText= "select count(*) from uye_Kurumsal where comUsername='" + mEmail.Value + "'";
                comman.CommandText = "select count(*) from uye_Bireysel where userName='" + mEmail.Value + "'";

                //MySqlDataReader dataReader = comman.ExecuteReader();
                int sayK= Convert.ToInt32(commanK.ExecuteScalar());
                int say = Convert.ToInt32(comman.ExecuteScalar());
                int saySession= Convert.ToInt32(commanSession.ExecuteScalar());
                connection.Close();
                if (say > 0 || sayK > 0)
                {

                    //Response.Write("<script>alert('Bu kişi var ')</script>");

                    //****************************************************************************


                    if (mEmail.Value != "")
                    {
                        if (mSub.Value != "")
                        {
                            if (msg.Value != "")
                            {
                                //**********************************************************************************************
                                int gorulmedi = 0;
                                int kurumsal = 0;
                                int bireysel = 1;
                                connection.Open();
                                MySqlCommand command = new MySqlCommand();
                                command.Connection = connection;
                                if (saySession > 0)
                                {
                                    if (say > 0)
                                    {
                                        command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn,senderColumn,date) values ((select id from uye_Bireysel where userName='" + mEmail.Value + "'),(select id from uye_Bireysel where eMail='" + Session["on_eMail"] + "'),'" + mSub.Value + "','" + msg.Value + "','" + gorulmedi + "','" + bireysel + "','" + bireysel + "',CURRENT_TIMESTAMP)";
                                    }
                                    if (sayK > 0)
                                    {
                                        command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn,senderColumn,date) values ((select id from uye_Kurumsal where comUsername='" + mEmail.Value + "'),(select id from uye_Bireysel where eMail='" + Session["on_eMail"] + "'),'" + mSub.Value + "','" + msg.Value + "','" + gorulmedi + "','" + kurumsal + "','" + bireysel + "',CURRENT_TIMESTAMP)";
                                    }
                                }
                                if(saySession<1)
                                {
                                    if (say > 0)
                                    {
                                        command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn,senderColumn,date) values ((select id from uye_Bireysel where userName='" + mEmail.Value + "'),(select id from uye_Bireysel where eMail='" + Session["on_eMail"] + "'),'" + mSub.Value + "','" + msg.Value + "','" + gorulmedi + "','" + bireysel + "','" + kurumsal + "',CURRENT_TIMESTAMP)";
                                    }
                                    if (sayK > 0)
                                    {
                                        command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn,senderColumn,date) values ((select id from uye_Kurumsal where comUsername='" + mEmail.Value + "'),(select id from uye_Bireysel where eMail='" + Session["on_eMail"] + "'),'" + mSub.Value + "','" + msg.Value + "','" + gorulmedi + "','" + kurumsal + "','" + kurumsal+ "',CURRENT_TIMESTAMP)";
                                    }
                                }
                                command.ExecuteNonQuery();
                                connection.Close();
                                mEmail.Value = "";
                                mSub.Value = "";
                                msg.Value = "";

                                //**********************************************************************************************




                            }
                            else
                            {
                                Response.Write("<script>alert('Gönderilecek Mesajı Girmelisiniz.')</script>");
                            }





                        }
                        else
                        {
                            Response.Write("<script>alert('Mesaj Konusunu Girmelisiniz.')</script>");
                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('Alıcı Mail adresi Girilmesi Zorunludur.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('geçersiz kullanıcı adı')</script>");
                }
            }
                
            catch (Exception xe)
            {
                Response.Write("<script>alert('" + xe.Message + "')</script>");

            }


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
       



//**********************************************************************************************************************

    }
}
