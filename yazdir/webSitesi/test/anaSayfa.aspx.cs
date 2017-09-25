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
                command.CommandText = "insert into uye_Bireysel (userName,password,eMail) values ('"+kAdi.Value+"','"+password1.Value+"','"+mail.Value+"')";
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch(Exception xe)
            {
                Response.Write("<script>alert('"+xe.Message+"')</script>");
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
               connection.Open();
            
            MySqlCommand komut = new MySqlCommand();
            komut.CommandText= "select * from uye where eMail='" + grsMail.Value.Trim() + "' and password='" + grsPassword.Value.Trim() + "'";
              MySqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                //  MessageBox.Show("Hoşgeldiniz");
                Response.Write("<script>alert(Giriş yapıldı)</script>");
            }
            else
            {
                Response.Write("<script>alert(Giriş yapılamadı)</script>");
                // MessageBox.Show("Hatalı Giriş");
            }
                connection.Close();
         }
    }
}