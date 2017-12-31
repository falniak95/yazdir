using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using yazdir.webSitesi.test.Libraries;
namespace yazdir.webSitesi
{
    public partial class comments : System.Web.UI.Page
    {
        private string haberID=string.Empty;

        #region MySql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                    haberID = Request.QueryString["id"].ToString();

                haberID = "1";
                Session["on_eMail"] = "test@test";

                getComments();
            }
        }
        public commentsClass _yorumlar = new commentsClass();
        private void getComments()
        {
           
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select * from comments where commentedNewId=" + haberID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                List<commentsClass> newList = new List<commentsClass>();
                while (reader.Read())
                {
                    _yorumlar = new commentsClass();
                    _yorumlar.yorumID = reader["id"].ToString();
                    _yorumlar.yorumSahipID = reader["ownerID"].ToString();
                    _yorumlar.yorumIcerik = reader["commentContent"].ToString();
                    newList.Add(_yorumlar);
                }
                reader.Close();
                connection.Close();
                if (newList.Count > 0)
                {
                    newList = changeWithUserName(newList);
                    commentsRepeater.DataSource = newList;
                    commentsRepeater.DataBind();
                }
                else
                {
                    yorumYok.Visible = true;
                }
            
        }
        private List<commentsClass> changeWithUserName(List<commentsClass> yorumListesi)
        {
            foreach (commentsClass yorum_ in yorumListesi)
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select name,surname from uye_Bireysel where id=" + yorum_.yorumSahipID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    yorum_.yorumSahipIsim = reader["name"].ToString() + " " + reader["surname"].ToString();

                }
                reader.Close();
                connection.Close();
            }
            return yorumListesi;
        }
        databaseConnection dC = new databaseConnection();
        bool aynisiVarMi = false,alintiYapildiMi=false;
        protected void yorumGonder_Click(object sender, EventArgs e)
        {
            
                string userID = dC.findUserId(Session["on_eMail"].ToString());

            if (Request.QueryString["id"] != null)
                haberID = Request.QueryString["id"].ToString();

            if (connection.State == ConnectionState.Closed)
                    connection.Open();
                MySqlCommand command = new MySqlCommand("select * from comments where commentedNewId=" + haberID, connection);
                MySqlDataReader reader = command.ExecuteReader();
                List<commentsClass> yorumList = new List<commentsClass>();
                while (reader.Read())
                {
                    _yorumlar = new commentsClass();
                    _yorumlar.yorumSahipID = reader["ownerID"].ToString();
                    _yorumlar.yorumIcerik = reader["commentContent"].ToString();
                    yorumList.Add(_yorumlar);
                }
                reader.Close();
                connection.Close();


                foreach (commentsClass yorumlar in yorumList)
                {
                    if (yorumlar.yorumIcerik.ToUpper() == yorumTxt.Text.ToUpper())
                        aynisiVarMi = true;

                }
                if (!aynisiVarMi && !alintiYapildiMi)
                {
                    MySqlCommand _command = new MySqlCommand("insert into comments (commentContent,ownerID,commentedNewId) values ('" + yorumTxt.Text + "'," + userID + "," + haberID + ")", connection);
                    if (connection.State == ConnectionState.Closed)
                        connection.Open();
                    _command.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("/webSitesi/test/comments.aspx?id=" + haberID);
                }
                else if(alintiYapildiMi)
               {
                string alintiIcerik = Session["alinti"].ToString();
                MySqlCommand _command = new MySqlCommand("insert into comments (commentContent,ownerID,commentedNewId) values ('" +"Alinti Sahib:"+alintiIcerik+" " + yorumTxt.Text + "'," + userID + "," + haberID + ")", connection);
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                _command.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("/webSitesi/test/comments.aspx?id=" + haberID);
            }
                else
                {
                    Response.Write("<script>alert('Aynı yorumdan mevcut.')</script>");
                }

            
        }

        protected void commentsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
           
                System.Diagnostics.Debug.WriteLine("Alinti ya tıklandı...");
                System.Diagnostics.Debug.WriteLine(e.CommandName);
                if (e.CommandName == "alinti")
                {

                //Label sahip = ((Label)e.Item.FindControl("commentOwner"));
                string commentOwner = ((Button)e.Item.FindControl("Button1")).ToolTip; //sahip.Text;


                    Session["alinti"] = commentOwner;
                    alintiYapildiMi = true;
                    System.Diagnostics.Debug.WriteLine("Butona tıklandı Alıntı yapılan kişi:"+Session["alinti"].ToString());
                  //  sahip.Text = "alintilandi....";
                }
            

        }

        }
    }
