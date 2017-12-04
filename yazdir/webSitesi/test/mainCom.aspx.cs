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
    public partial class yeniSayfa : System.Web.UI.Page
    {
        #region MysqlConnection
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        System.Web.UI.WebControls.Literal Literal1;
        databaseConnection dC = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            sirket.InnerText = "Merhaba " + Session["on_eMail"];
            isListesiniGetir();


            DinamikPanel.Controls.Add(Literal1);
            if (!IsPostBack)
            {
                myModal2();
            }

        }
        //*************************************************************************
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
        //*************************************************************************
        public void newMessage(object sender, EventArgs e)
        {

            try
            {
                //****************************************************************************
                connection.Open();
                MySqlCommand comman = new MySqlCommand();
                MySqlCommand commanK = new MySqlCommand();
                comman.Connection = connection;
                commanK.Connection = connection;
                commanK.Connection = connection;
                commanK.CommandText = "select count(*) from uye_Kurumsal where comUsername='" + mEmailK.Value + "'";
                comman.CommandText = "select count(*) from uye_Bireysel where userName='" + mEmailK.Value + "'";
                //MySqlDataReader dataReader = comman.ExecuteReader();
                int sayK = Convert.ToInt32(commanK.ExecuteScalar());
                int say = Convert.ToInt32(comman.ExecuteScalar());
                connection.Close();
                if (say > 0 || sayK > 0)
                {

                    //Response.Write("<script>alert('Bu kişi var ')</script>");

                    //****************************************************************************


                    if (mEmailK.Value != "")
                    {
                        if (mSubK.Value != "")
                        {
                            if (msgK.Value != "")
                            {
                                //**********************************************************************************************
                                int gorulmedi = 0;
                                int kurumsal = 0;
                                int bireysel = 1;
                                connection.Open();
                                MySqlCommand command = new MySqlCommand();
                                command.Connection = connection;
                                if (say > 0)
                                {
                                    command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn) values ((select id from uye_Bireysel where userName='" + mEmailK.Value + "'),(select id from uye_Kurumsal where comEmail='" + Session["on_eMail"] + "'),'" + mSubK.Value + "','" + msgK.Value + "','" + gorulmedi + "','" + bireysel + "' )";
                                }
                                if (sayK > 0)
                                {
                                    command.CommandText = "insert into messages (receiverID,senderID,header,content,seenReceiver,receiverColumn) values ((select id from uye_Kurumsal where comUsername='" + mEmailK.Value + "'),(select id from uye_Kurumsal where comEmail='" + Session["on_eMail"] + "'),'" + mSubK.Value + "','" + msgK.Value + "','" + gorulmedi + "','" + kurumsal + "')";
                                }
                                command.ExecuteNonQuery();
                                connection.Close();
                                mEmailK.Value = "";
                                mSubK.Value = "";
                                msgK.Value = "";
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
        //*************************************************************************
        public void hsbSil(object sender, EventArgs e)
        {
            if (Password1.Value == Password2.Value)
            {
                MySqlCommand kmt = new MySqlCommand("select comPassword FROM uye_Kurumsal WHERE comEmail='" + Session["on_eMail"].ToString() + "'", connection);
                connection.Open();
                kmt.ExecuteNonQuery();
                int sifre = Convert.ToInt32(kmt.ExecuteScalar());
                connection.Close();
                if (sifre == Convert.ToInt32(Password1.Value))
                {
                    MySqlCommand kmt2 = new MySqlCommand("delete from uye_Kurumsal where comEmail='" + Session["on_eMail"] + "'", connection);
                    connection.Open();
                    // kmt2.CommandText=
                    kmt2.ExecuteNonQuery();
                    connection.Close();
                    Session.Clear();
                    Response.Redirect("/webSitesi/test/anaSayfa.aspx");


                }
            }
        }
        //**************************************************************************
        public void sessionSil(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/websitesi/test/anaSayfa.aspx");
        }

        public void upd(object sender, EventArgs e)
        {
            MySqlCommand komut = new MySqlCommand("update uye_Kurumsal set comAdress='" + address.Value + "',  comNo='" + mobilPhone.Value + "' , AccountNumber='" + account.Value + "'  where comEmail='" + Session["on_eMail"].ToString() + "'", connection);
            connection.Open();
            komut.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('Bilgileriniz Güncellendi.')</script>");
        }


        public void myModal2()
        {

            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");


            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Kurumsal where comEmail='" + Session["on_eMail"].ToString() + "'";
            MySqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                vergiNo.Value = dataReader["vergiNo"].ToString();
                userName.Value = dataReader["comUsername"].ToString();
                comName.Value = dataReader["comName"].ToString();
                address.Value = dataReader["comAdress"].ToString();
                city.Value = dataReader["comCity"].ToString();
                mobilPhone.Value = dataReader["comNo"].ToString();
                eMail.Value = dataReader["comEmail"].ToString();
                account.Value = dataReader["accountNumber"].ToString();

            }




            connection.Close();
        }





        public void changePassCom(object sender, EventArgs e)
        {


            if (eski.Value.ToString() == Session["on_password"].ToString())
            {
                if (newPassword.Value.ToString() == newPasswordAgain.Value.ToString())
                {
                    //  connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
                    //  MySqlCommand kmt = new MySqlCommand("update uye_Bireysel set password='" + newPassword.Value + "' where eMail='" + Session["on_eMail"].ToString() + "'", connection);
                    MySqlCommand kmt = new MySqlCommand("update uye_Kurumsal set comPassword='" + newPassword.Value + "' where comEmail='" + Session["on_eMail"].ToString() + "'", connection);
                    connection.Open();
                    kmt.ExecuteNonQuery();

                    connection.Close();


                }
                else
                {
                    Response.Write("<script>alert('Yeni Şifre Tekrarı Hatalı Şifre Değiştirilemedi.')</script>");
                    eski.Value = "";
                    newPassword.Value = "";
                    newPasswordAgain.Value = "";
                }
            }
            else
            {
                Response.Write("<script>alert('" + Session["on_password"] + " ve " + newPassword.Value.ToString() + "')</script>");
                eski.Value = "";
                newPassword.Value = "";
                newPasswordAgain.Value = "";
            }



        }



    }
}