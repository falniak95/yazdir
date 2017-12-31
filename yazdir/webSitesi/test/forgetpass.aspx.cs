using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Net.Mail;
using System.Net;

namespace yazdir.webSitesi.test
{
    public partial class forgetpass : System.Web.UI.Page
    {
        public MySqlConnection connection;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                eMail.Value = Session["on_eMail"].ToString();
                gizliSoru();
                //modal();
            }
        }

        public void changePassword (object sender, EventArgs e)
        {
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");

            
                    if (newPassword.Value.ToString() == newPasswordAgain.Value.ToString())
                    {

                        MySqlCommand kmt = new MySqlCommand("update uye_Bireysel set password='" + newPassword.Value + "' where eMail='" + Session["on_eMail"].ToString() + "'", connection);

                    connection.Open();
                    kmt.ExecuteNonQuery();

                        connection.Close();

                    Response.Write("<script>alert('Şifreniz Başarıyla Değiştirildi..')</script>");
                    Session.Clear();

                    Response.Redirect("/websitesi/test/anaSayfa.aspx");
                    

                }
                    else
                    {
                        Response.Write("<script>alert('Yeni Şifre Tekrarı Hatalı Şifre Değiştirilemedi.')</script>");
                        
                        newPassword.Value = "";
                        newPasswordAgain.Value = "";
                    }
                
               
        }


        public void gizliSoru()
        {
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel where eMail='" + eMail.Value+"'";
            MySqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                if (dataReader["gizliSoru"].ToString() != "")
                {
                   
                    secretQ.Value = dataReader["gizliSoru"].ToString();
                }
            }
            connection.Close();
        }

        //public void modal ()
        //{
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        //}

        public string GenerateNewPassword(int size)
        {
            char[] cr = "0123456789abcdefghijklmnopqrstuvwxyz".ToCharArray();
            string result = string.Empty;
            Random r = new Random();
            for (int i = 0; i < size; i++)
            {
                result += cr[r.Next(0, cr.Length - 1)].ToString();
            }
            return result;
        }



        public void changepass(object sender , EventArgs e)
        {

            string newPass = string.Empty;
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel where eMail='" + Session["on_eMail"].ToString() + "'";
            MySqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                if (dataReader["gizliCevap"].ToString() == secretA.Value)
                {
                   newPass= GenerateNewPassword(5);

                  

                }
                else
                {
                    Response.Write("<script>alert('Gizli Soru Yanlış.')</script>");
                }

            }
            connection.Close();
            connection.Open();
            MySqlCommand kmt = new MySqlCommand("update uye_Bireysel set password='" + newPass + "' where eMail='" + eMail.Value + "'", connection);

          
            kmt.ExecuteNonQuery();

            connection.Close();

            Response.Write("<script>alert('Yeni Şifre oluşturuldu. Şifreniz: " + newPass + ".')</script>");

        }


    }
}