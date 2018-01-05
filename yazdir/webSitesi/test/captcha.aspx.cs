using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Text;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

namespace yazdir.webSitesi.test
{
    public partial class captcha : System.Web.UI.Page
    {
        MySqlConnection connection;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Guvenlik(200, 70, "Chiller", 50, 20, 10, Server.MapPath("images/arkaplan.png"));
            }
        }
        public void registerNow(object sender, EventArgs e)
        {
            
            connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
            try
            {
                
                    if (kAdi.Value != "" && mail.Value != "" && name.Value != "" && surname.Value != "" && password1.Value != "")
                    {
                        if (password1.Value == password2.Value)
                        {
                            if (Session["myCaptcha"].ToString() == cap1.Value)
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

                                Response.Write("<script>alert('Kod hatalı.Tekrar deneyin...')</script>");
                                generateCaptcha(6);
                                Guvenlik(200, 70, "Chiller", 50, 20, 10, Server.MapPath("images/arkaplan.png"));

                                cap1.Value = "";
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Şifreler uyumsuz.')</script>");
                        }
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
        public string generateCaptcha(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();
        }
        string createdCapcha;
        public void Guvenlik(int H, int W, string fonts, int Punto, int X, int Y, string arkaplanResmi)
        {
            createdCapcha = generateCaptcha(6); ;
            Bitmap bmp = new Bitmap(H, W);
            Graphics g = Graphics.FromImage(bmp);
            Font font = new Font(fonts, Punto);
            Random r = new Random();
            int sayi = r.Next(100000, 9999999);
            ViewState["captcha"] = createdCapcha;
            System.Drawing.Image img = System.Drawing.Image.FromFile(arkaplanResmi);
            g.DrawImage(img, 1, 1);
            g.DrawString(createdCapcha, font, Brushes.DarkRed, X, Y);
            g.CompositingQuality = CompositingQuality.HighQuality;
            Session["myCaptcha"] = createdCapcha;
            bmp.Save(Server.MapPath("images/captcha.png"), ImageFormat.Png);
        }


    }
}