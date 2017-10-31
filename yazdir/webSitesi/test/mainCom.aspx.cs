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
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");
        protected void Page_Load(object sender, EventArgs e)
        {
            sirket.InnerText = "Merhaba " + Session["on_eMail"];

            if (!IsPostBack)
            {
                myModal2();
            }

        }

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