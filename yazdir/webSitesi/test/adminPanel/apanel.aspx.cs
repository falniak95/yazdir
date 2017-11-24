using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yazdir.webSitesi.test.Libraries;
using MySql.Data.MySqlClient;

namespace yazdir.webSitesi.test.adminPanel
{
    public partial class apanel : System.Web.UI.Page
    {


        System.Web.UI.WebControls.Literal Literal1,Literal2, Literal3;
        databaseConnection dC = new databaseConnection();
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");

        string loggedName;
        protected void Page_Load(object sender, EventArgs e)
        {
            loggedName = "admin";
          
            if(!Page.IsPostBack)
            {
                try
                {
                    loggedName = Session["admin_uName"].ToString();
                    saveIt.Enabled = false;
                  
                }
                catch
                {
                  //  Response.Redirect("/webSitesi/test/404.html");
                }
                if (Convert.ToInt16(Session["isUpOk"]) == 1)
                {
                    Response.Write("<script>alert('Editör Düzenlendi.')</script>");
                    Session["isUpOk"] = 0;
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                else if (Convert.ToInt16(Session["isUpOk"]) == 2)
                {
                    Response.Write("<script>alert('Editör düzenleme işlemi başarısız..')</script>");
                    Session["isUpOk"] = 0;
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                
                welcomeMsg.Text = "Hoşgeldiniz " + loggedName;
                sirketler.InnerText = dC.getCompany();
                uyeler.InnerText = dC.getUserCount();
                mIsler.InnerText = dC.getConfirmedJobs();
                tamamIsler.InnerText = dC.getDoneJobs();
                onaylanmamisIsler.InnerText = dC.getUnconfirmedJobs();

                dinamikEditorTablosu();
                dinamikAdminTablosu();
                dinamikKullaniciTablosu();
            }
        }

        private void dinamikKullaniciTablosu()
        {
            Literal3 = new Literal();
            Literal3.Text = "";
            Literal3.Text += "<table class='table table-striped' id='tblGrid'>";
            Literal3.Text += "<thead id='tblHead'>";
            Literal3.Text += "<tr>";
            Literal3.Text += "<th>Sıra</th>";
            Literal3.Text += "<th>Kullanıcı Adı</th>";
            Literal3.Text += "<th class='text - right'>Mail Adresi</th>";
            Literal3.Text += "</tr>";
            Literal3.Text += "</thead>";
            Literal3.Text += "<tbody>";
            string[] users = dC.userListesi();
            string[] userMail = dC.userMail;
            for (int i = 0; i < dC.userCount; i++)
            {
                Literal3.Text += "<tr><td>" + (i + 1) + "</td>";
                Literal3.Text += "<td>" + users[i] + "</td>";
                Literal3.Text += "<td class='text - right'>" + userMail[i] + "</td>";
                Literal3.Text += "</tr>";
            }

            Literal3.Text += "</tr>";
            Literal3.Text += "</tbody>";
            Literal3.Text += "</table>";

            Panel3.Controls.Add(Literal3);
        }

        private void dinamikAdminTablosu()
        {
            Literal2 = new Literal();
            Literal2.Text = "";
            Literal2.Text += "<table class='table table-striped' id='tblGrid'>";
            Literal2.Text += "<thead id='tblHead'>";
            Literal2.Text += "<tr>";
            Literal2.Text += "<th>Sıra</th>";
            Literal2.Text += "<th>Yönetici Kullanıcı Adı</th>";
            Literal2.Text += "<th class='text - right'>Yönetici Mail</th>";
            Literal2.Text += "</tr>";
            Literal2.Text += "</thead>";
            Literal2.Text += "<tbody>";
            string[] admins = dC.adminListesi();
            string[] adminMail = dC.adminMail;
            for (int i = 0; i < dC.adminCount; i++)
            {
                Literal2.Text += "<tr><td>" + (i + 1) + "</td>";
                Literal2.Text += "<td>" + admins[i] + "</td>";
                Literal2.Text += "<td class='text - right'>" + adminMail[i] + "</td>";
                Literal2.Text += "</tr>";
            }

            Literal2.Text += "</tr>";
            Literal2.Text += "</tbody>";
            Literal2.Text += "</table>";

            Panel2.Controls.Add(Literal2);
        }

        private void dinamikEditorTablosu()
        {
            Literal1 = new Literal();
            Literal1.Text = "";
            Literal1.Text += "<table class='table table-striped' id='tblGrid'>";
            Literal1.Text += "<thead id='tblHead'>";
            Literal1.Text += "<tr>";
            Literal1.Text += "<th>Sıra</th>";
            Literal1.Text += "<th>Editör Kullanıcı Adı</th>";
            Literal1.Text += "<th class='text - right'>Editör Mail</th>";
            Literal1.Text += "</tr>";
            Literal1.Text += "</thead>";
            Literal1.Text += "<tbody>";
            string[] editors = dC.editorListesi();
            string[] editorMail = dC.editorMail;
            for(int i=0;i<dC.editorCount;i++)
            {
                Literal1.Text += "<tr><td>"+(i+1)+"</td>";
                Literal1.Text += "<td>"+editors[i]+"</td>";
                Literal1.Text += "<td class='text - right'>"+editorMail[i]+"</td>";
                Literal1.Text += "</tr>";
            }

            Literal1.Text += "</tr>";
            Literal1.Text += "</tbody>";
            Literal1.Text += "</table>";

            DinamikPanel.Controls.Add(Literal1);
        }
        private void addEditor()
        {
           
        }

        public void logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/websitesi/test/adminPanel/panel.aspx");
        }

        protected void Gonder_Click(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "insert into managers (userName,password,eMail,name,surname,yetki) values ('" + userName.Text + "','" + uPwd.Text + "','"+uMail.Text+"','" + uName.Text + "','" + surName.Text + "','2')";
            connection.Open();
            command.ExecuteNonQuery();      
            connection.Close();
            dC.EditorEkleLog(loggedName,userName.Text+" kullanıcı adlı editör eklendi.");
            Response.Write("<script>alert('Editör Eklendi.')</script>");
        }

        protected void addAdmin(object sender,EventArgs e)
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "insert into managers (userName,password,eMail,name,surname,yetki) values ('" + adminUname.Text + "','" + adminPwd.Text + "','" + adminMail.Text + "','" + adminName.Text + "','" + adminSurname.Text + "','1')";
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('Yönetici Eklendi.')</script>");



        }
        protected void addUser(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "insert into uye_Bireysel (userName,password,eMail,name,surname) values ('" + userName.Text + "','" + userPwd.Text + "','" +userMail.Text + "','" + userRealName.Text + "','" + userRealSurname.Text + "')";
            command.ExecuteNonQuery();
            connection.Close();


        }
        protected void Getir_Click(object sender, EventArgs e)
        {
            editorPwd.Enabled = true;
            editorName.Enabled = true;
            editorSurname.Enabled = true;
            editorMail.Enabled = true;
            saveIt.Enabled = true;
            editorUname.Enabled = false;
            
            string[] editor = new string[4];
            editor = dC.getEditorInformation(editorUname.Text);
            editorPwd.Text = editor[0];
            editorMail.Text = editor[1];
            editorName.Text = editor[2];
            editorSurname.Text = editor[3];
            Getir.Enabled = false;
        }
        protected void getAdminInfo(object sender, EventArgs e)
        {
            string[] admin = dC.getAdminInformation(adminEdituName.Text);
            if (admin[0] != null)
            {
                adminEditPwd.Enabled = true;
                adminEditName.Enabled = true;
                adminEditMail.Enabled = true;
                adminEditSurname.Enabled = true;
                saveAdminEdit.Enabled = true;
                adminEdituName.Enabled = false;
                //
                adminEditPwd.Text = admin[0];
                adminEditMail.Text = admin[1];
                adminEditName.Text = admin[2];
                adminEditSurname.Text = admin[3];
                getAdminInfoBtn.Enabled = false;
                //
                errorEditAdminMsg.Visible = false;
            }
            else
            {
                errorEditAdminMsg.Visible = true;

            }
        }
        protected void getUserDeleteInfo(object sender, EventArgs e)
        {
            string[] userInfo = dC.getUserInformationForDelete(userName.Text);
            userDeleteUname.Enabled = false;
            if (userInfo[0] != null)
            {
                userDeleteInfoTxt.Text = "Kullanıcı Adı " + userDeleteUname.Text + " olan, " + userInfo[1] + " mail adresli üye silinecektir. Onaylıyor musunuz?";
                userNotFound.Visible = false;
            }
            else
            {
                userNotFound.Visible = true;
            }
        }

        protected void getAdminDeleteInfo(object sender, EventArgs e)
        {
            string[] adminInfo = dC.getAdminInformation(adminDeleteuName.Text);
            adminDeleteuName.Enabled = false;
            if (adminInfo[0] != null)
            {
                deleteAdminTxt.Text = "Kullanıcı Adı " + adminDeleteuName.Text + " olan, " + adminInfo[1] + " mail adresli yönetici silinecektir. Onaylıyor musunuz?";
                deleteAdminNotFound.Visible = false;
            }
            else
            {
                deleteAdminNotFound.Visible = true;
            }
        }
        protected void deleteItUser(object sender, EventArgs e)
        {
            if (dC.deleteUser(userDeleteUname.Text))
            {
                dC.EditorSilLog(loggedName, userDeleteUname.Text);
                Response.Write("<script>alert('Kullanıcı silindi..')</script>");
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı silme işlemi başarısız..')</script>");
            }
        }
        protected void deleteItAdmin(object sender, EventArgs e)
        {
            if (dC.deleteAdmin(adminDeleteuName.Text))
            {
                Response.Write("<script>alert('Yönetici silindi..')</script>");
            }
            else
            {
                Response.Write("<script>alert('Yönetici silme işlemi başarısız..')</script>");
            }
        }
        protected void getDeleteInfo(object sender, EventArgs e)
        {
            string[] ediInfo = dC.getEditorInformation(editorDeleteuName.Text);
            editorDeleteuName.Enabled = false;
            silmeText.Text ="Kullanıcı Adı "+editorDeleteuName.Text+ " olan, "+ediInfo[1]+" mail adresli editör silinecektir. Onaylıyor musunuz?";
        }

        protected void EditorGoruntuleBtn_Click(object sender, EventArgs e)
        {
            
        }

        protected void deleteIt(object sender, EventArgs e)
        {
          if( dC.deleteEditor(editorDeleteuName.Text))
            {
                Response.Write("<script>alert('Editör silindi..')</script>");
            }
          else
            {
                Response.Write("<script>alert('Editör silme işlemi başarısız..')</script>");
            }
        }
        protected void saveIt_Click(object sender, EventArgs e)
        {
            bool state = dC.updateEditor(editorUname.Text, editorPwd.Text, editorMail.Text, editorName.Text, editorSurname.Text);
            if(state)
            {
                dC.EditorDuzenlelLog(loggedName, editorUname.Text);
                Session["isUpOk"] = 1;
                Response.Redirect(Request.Url.AbsoluteUri);

            }
            else
            {
                Session["isUpOk"] = 2;
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}