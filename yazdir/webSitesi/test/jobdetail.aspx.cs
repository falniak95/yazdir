using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Data;


namespace yazdir.webSitesi.test
{
    public partial class jobdetail : System.Web.UI.Page
    {
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        private string adOwnerName,adOwner,imgUrl, ilanTuru, fiyat, ilanIcerigi, iTarihi, basvuruSayi, contract;
        private void jobDetail()
        {
            MySqlCommand command = new MySqlCommand("select * from isler where id=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader dataReader = command.ExecuteReader();
            while(dataReader.Read())
            {
                adOwner = dataReader["ad_ownerCompany"].ToString();
                ilanTuru= dataReader["ad_jobType"].ToString();
                fiyat= dataReader["ad_price"].ToString();
                ilanIcerigi = dataReader["ad_content"].ToString();
                iTarihi = dataReader["ad_date"].ToString();
                basvuruSayi= dataReader["ad_appCount"].ToString();
                contract = dataReader["ad_contract"].ToString();

            }
            dataReader.Close();
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select comName,comLogo from uye_Kurumsal where id=" + adOwner, connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while(_reader.Read())
            {
                adOwnerName = _reader["comName"].ToString();
                imgUrl = _reader["comLogo"].ToString();
            }
            _reader.Close();

            connection.Close();
        }

        string adId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
                adId = Request.QueryString["id"].ToString();


            findPersonId();
            findAllApplications();
            if(allApps.IndexOf(personId)>0)
            {
                joinApp.CssClass = "btn btn-danger";
                joinApp.Text = "Bu ilana daha önceden başvurmuşsunuz!";
                basvuru.Visible = true;
                joinApp.Enabled = false;
            }

            
            jobDetail();

            kurumLb.Text = "Kurum: "+adOwnerName ;
            imgBox.ImageUrl = imgUrl;
            
            ilanTuruLb.Text = "<b> İlan Türü:</b> "+ilanTuru;
            fiyatLb.Text = "<b>Belirlenmiş İlan Fiyatı:</b>"+fiyat;
            icerikLb.Text = ilanIcerigi;
            tarihLb.Text = "<b>Son Başvuru Tarihi: </b>" + iTarihi;
            basvuruSayi = findAppCount().ToString();
            basvuruLb.Text = "<b>Toplam Başvuru Sayısı: </b>" + basvuruSayi;
            contractLink.HRef = contract;


        }
        private int findAppCount()
        {
            string applications = allApps;
            int count = 0;

            foreach (char q in applications)
            {
                if (q == '.')
                    count++;
            }

            return count;
        }
        private string beforeText,personId;
        private string findPersonId()
        {
            string logged = Session["on_eMail"].ToString();
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select id from uye_Bireysel where eMail='" + logged+"'", connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while (_reader.Read())
            {
                personId = _reader["id"].ToString();
            }
            _reader.Close();

            connection.Close();

            return personId;
        }
        string allApps;
        private void findAllApplications()
        {
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select * from isler where id=" + adId, connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while (_reader.Read())
            {
                allApps = _reader["ad_appPersonid"].ToString();
            }
            _reader.Close();

            connection.Close();
        }
        private void joinAppFunc()
        {
           
            string _personid = findPersonId();
            MySqlCommand _command = new MySqlCommand("insert into doneJobs ( contractUrl,fileUrl,jobOwnerID,jobWorkerID,OwnerOK,workerPoint,JobId,jobProgress) values ('" + contract + "','-1'," + adOwner + "," + _personid + ",-1,-1," + adId + ",0)", connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();

            _command.ExecuteNonQuery();
        }
        protected void basvuruButtonClick(object sender, EventArgs e)
        {
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select ad_appPersonid from isler where id=" + adId, connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while (_reader.Read())
            {
                beforeText = _reader["ad_appPersonid"].ToString();
            }
            _reader.Close();

            connection.Close();
            string _person = findPersonId();
            MySqlCommand updateCommand = new MySqlCommand("update isler set ad_appPersonid='" + beforeText + "." + _person + "' where id=" + adId,connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            updateCommand.ExecuteNonQuery();
            connection.Close();
            joinAppFunc();
            Response.Write("<script>alert('Başvuru tamamlandı.')</script>");
        }
    }
}