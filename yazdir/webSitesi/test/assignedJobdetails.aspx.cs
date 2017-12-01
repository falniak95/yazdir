using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace yazdir.webSitesi.test
{
    public partial class assignedJobdetails : System.Web.UI.Page
    {
        string adId;
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion
        private string adOwnerName, adOwner, imgUrl, ilanTuru, fiyat, ilanIcerigi, iTarihi, basvuruSayi, cntrct;

        protected void saveProgress_Click(object sender, EventArgs e)
        {
            MySqlCommand command = new MySqlCommand("update doneJobs set jobProgress="+progressTxtbox.Text+" where jobId=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            if(Convert.ToInt16(progressTxtbox.Text)<=100 && Convert.ToInt16(progressTxtbox.Text) >=0)
            {
                command.ExecuteNonQuery();
               
            }
            connection.Close();
            if (Convert.ToInt16(progressTxtbox.Text)==100)
            {
                sendOwnerOK();
            }
        }
        private void sendOwnerOK()
        {
            MySqlCommand command = new MySqlCommand("update doneJobs set ownerOK=1 where jobId=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();

            command.ExecuteNonQuery();
          connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
                adId = Request.QueryString["id"].ToString();

            jobDetail();

            kurumLb.Text = "Kurum: " + adOwnerName;
            imgBox.ImageUrl = imgUrl;
            ilanTuruLb.Text = "<b> İlan Türü:</b> " + ilanTuru;
            fiyatLb.Text = "<b>Belirlenmiş İlan Fiyatı:</b>" + fiyat;
            icerikLb.Text = ilanIcerigi;
            tarihLb.Text = "<b>Son Teslim Tarihi: </b>" + iTarihi;
            basvuruLb.Text = "<b>Toplam Başvuru Sayısı: </b>" + basvuruSayi;
            jobOtherDetail();
            

        }
        string progress;
        private void jobOtherDetail()
        {
            MySqlCommand command = new MySqlCommand("select * from doneJobs where jobId=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                progress = dataReader["jobProgress"].ToString();
            }


            pBar.Attributes["style"] = "width:"+progress+"%";
            pBarValueTxt.Text = pBar.Attributes["style".Replace("width:", string.Empty)];
            connection.Close();
        }
        private void jobDetail()
        {
            MySqlCommand command = new MySqlCommand("select * from isler where id=" + adId, connection);
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                adOwner = dataReader["ad_ownerCompany"].ToString();
                ilanTuru = dataReader["ad_jobType"].ToString();
                fiyat = dataReader["ad_price"].ToString();
                ilanIcerigi = dataReader["ad_content"].ToString();
                iTarihi = dataReader["ad_date"].ToString();
                basvuruSayi = dataReader["ad_appCount"].ToString();
                cntrct = dataReader["ad_contract"].ToString();

            }
            dataReader.Close();

            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select comName,comLogo from uye_Kurumsal where id=" + adOwner, connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while (_reader.Read())
            {
                adOwnerName = _reader["comName"].ToString();
                imgUrl = _reader["comLogo"].ToString();
            }
            _reader.Close();

            connection.Close();
        }


        private string beforeText, personId;
        private string findPersonId()
        {
            string logged = Session["on_eMail"].ToString();
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            MySqlCommand _command = new MySqlCommand("select id from uye_Bireysel where eMail='" + logged + "'", connection);
            MySqlDataReader _reader = _command.ExecuteReader();
            while (_reader.Read())
            {
                personId = _reader["id"].ToString();
            }
            _reader.Close();

            connection.Close();

            return personId;
        }


    }
}