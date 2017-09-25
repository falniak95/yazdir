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


        public MySqlConnection connection;
        
        public void register(object sender, EventArgs e)
        {
           connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            try
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "insert into uye_Bireysel (userName,password,eMail,name,surname) values ('"+kAdi.Value+"','"+password1.Value+"','"+mail.Value+"','"+name.Value+"','"+surname.Value+"')";
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch(Exception xe)
            {
                Response.Write("<script>alert('"+xe.Message+"')</script>");
                //Response.Redirect("http://www.google.com");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

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
                connection.Open();
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "select * from uye_Bireysel where eMail='"+grsMail.Value+"'";
                MySqlDataReader dataReader = command.ExecuteReader();
                while(dataReader.Read())
                {
                    if(dataReader[5].ToString()==grsPassword.Value)
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
            catch (Exception xe)
            {
                Response.Write("<script>alert('" + xe.Message + "')</script>");
                //Response.Redirect("http://www.google.com");
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
    }
}