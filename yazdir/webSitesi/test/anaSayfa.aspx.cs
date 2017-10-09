using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace yazdir.webSitesi.test
{
    public partial class anaSayfa : System.Web.UI.Page
    {
        public anaSayfa()
        {
            // registerPageButton.Click += registerNow;
        }

        public void sessionSifirla(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/websitesi/test/anaSayfa.aspx");
        }

        public MySqlConnection connection;

        //*****************************************************************************
        public void registerNowKurumsal(object sender, EventArgs e)
        {
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            try
            {
                if (comUserName.Value != "" && comMail.Value != "" )
                {
                    connection.Open();
                    MySqlCommand command = new MySqlCommand();
                    command.Connection = connection;
                    command.CommandText = "insert into uye_Kurumsal (comName,comUsername,comEmail,comNo,comPassword) values ('" + comName.Value + "','" + comUserName.Value + "','" + comMail.Value + "','" + comNo.Value + "','" + password3.Value + "')";
                    command.ExecuteNonQuery();
                    connection.Close();
                    Session["on_eMail"] = comMail.Value;
                  //  Session["on_password"] = password3.Value;
                    Response.Redirect("/webSitesi/test/main.aspx");
                }
                else
                {
                    Response.Write("<script>alert('İşlem tamamlanamadı.Gerekli alanları doldurun.')</script>");
                }
            }
            catch (Exception xe)
            {
                Response.Write("<script>alert('" + xe.Message + "')</script>");

            }
        }

    
        //******************************************************************************

        public void registerNow(object sender, EventArgs e)
        {
             connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
             try
             {
                if (kAdi.Value != "" && mail.Value != "" && name.Value != "" && surname.Value != "")
                {
                    connection.Open();
                    MySqlCommand command = new MySqlCommand();
                    command.Connection = connection;
                    command.CommandText = "insert into uye_Bireysel (userName,password,eMail,name,surname) values ('" + kAdi.Value + "','" + password1.Value + "','" + mail.Value + "','" + name.Value + "','" + surname.Value + "')";
                    command.ExecuteNonQuery();
                    connection.Close();
                    Session["on_eMail"] = mail.Value;
                    Session["on_password"] = password1.Value;
                    Response.Redirect("/webSitesi/test/main.aspx");
                }
                else
                {
                    Response.Write("<script>alert('İşlem tamamlanamadı.Gerekli alanları doldurun.')</script>");
                }
            }
             catch (Exception xe)
             {
                 Response.Write("<script>alert('" + xe.Message + "')</script>");
               
             }
       
        }



        public string loggedMail;
        public void checkLogIn()
        {
            try
            {
                loggedMail = Session["on_eMail"].ToString();
                if (loggedMail != null || loggedMail != "")
                {
                    logInButtonTab.Visible = false;
                    registerButtonTab.Visible = false;
                    kazanmayaBaslaTab.Visible = false;
                    //

                }
                else
                {
                    logInButtonTab.Visible = true;
                    registerButtonTab.Visible = true;
                    kazanmayaBaslaTab.Visible = true;
                    //
                }
            }
            catch
            {

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            checkLogIn();
        }
    
        public  void tikladi(object sender,EventArgs e)
        {

            Response.Write("<script>alert('Furkan')</script>");
           
        }

        public void grsbuton(object sender, EventArgs e)
        {

            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            try
            {
                if (grsMail.Value != "" && grsPassword.Value != "")
                {
                    
                    connection.Open();
                    MySqlCommand command = new MySqlCommand();
                    command.Connection = connection;
                    command.CommandText = "select * from uye_Bireysel where eMail='" + grsMail.Value + "'";
                    MySqlDataReader dataReader = command.ExecuteReader();
                    while (dataReader.Read())
                    {
                        if (dataReader[5].ToString() == grsPassword.Value)
                        {
                            Session["on_eMail"] = grsMail.Value;
                            Session["on_password"] = grsPassword.Value;
                            Response.Redirect("/webSitesi/test/main.aspx");
                            

                            
                        }
                        else
                        {
                            Response.Redirect("http://furkanalniak.com");
                        }
                    }
                    connection.Close();
                }
                else
                {
                    Response.Write("<script>alert('Geçerli bir mail veya şifre girin.')</script>");
                }
            }
            catch (Exception xe)
            {
                Response.Write("<script>alert('" + xe.Message + "')</script>");
                
            }










            //connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            //connection.Open();



            //MySqlCommand komut = new MySqlCommand();
            //komut.Connection = connection;

            //komut.CommandText = "select * from uye_Bireysel where eMail='" + grsMail.Value.Trim() + "' and password='" + grsPassword.Value.Trim() + "'";
            //MySqlDataReader dr = komut.ExecuteReader();
            //while (dr.Read())
            //{

            //    Response.Write("<script>alert('while calisti.')</script>");

            //    if (dr["eMail"].ToString() == grsMail.Value.Trim() && dr["password"].ToString() == grsPassword.Value.Trim())
            //    {
            //        Response.Write("<script>alert('Giriş yapıldı')</script>");
            //        //Response.Redirect("http://www.google.com");

            //    }
            //    else
            //    {
            //        //Response.Redirect("http://www.furkanalniak.com");
            //        Response.Write("<script>alert('Giriş yapılamadı')</script>");
            //    }
            //}
            //connection.Close();
        }

        protected void registerPageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://furkanalniak.com");
        }

        protected void furkan(object sender, EventArgs e)
        {
            Response.Redirect("http://furkanalniak.com");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://furkanalniak.com");
        }

        protected void testButonu_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://furkanalniak.com");
        }
    }
}