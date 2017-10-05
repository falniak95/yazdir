using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Data;

namespace yazdir.webSitesi.test.Libraries
{
    public class databaseConnection
    {
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");

        public databaseConnection()
        {

        }
        public int totalCount;
        public string[] jobType, jobHeader, jobPrice, jobDate, jobLevel;
        public string[] getJobListID()
        {
            string[] idList;
            MySqlCommand countCommand = new MySqlCommand("select COUNT(ad_ownerCompany) from isler", connection);
            openConnection();
            totalCount = Convert.ToInt16(countCommand.ExecuteScalar());
            idList = new string[totalCount];
            jobType= new string[totalCount];
            jobHeader= new string[totalCount];
            jobPrice= new string[totalCount];
            jobDate= new string[totalCount];
            jobLevel= new string[totalCount];
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select * from isler";
            command.Connection = connection;
            MySqlDataReader dataRead = command.ExecuteReader();
            int count = 0;
            while(dataRead.Read())
            {
                idList[count] = dataRead["ad_ownerCompany"].ToString();
                jobType[count] = dataRead["ad_jobType"].ToString();
                jobHeader[count] = dataRead["ad_header"].ToString();
                jobPrice[count]= dataRead["ad_price"].ToString();
                jobDate[count] = dataRead["ad_date"].ToString();
                jobLevel[count] = dataRead["ad_level"].ToString();
                count++;
            }
            closeConnection();

            return idList;
        }
        public string[] getCompanyInfo(int comingId)
        {
            string[] data = new string[8];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Kurumsal where id="+comingId;
            openConnection();
            MySqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                data[0] = reader["id"].ToString();
                data[1] = reader["vergiNo"].ToString();
                data[2] = reader["comName"].ToString();
                data[3]= reader["comNo"].ToString();
                data[4] = reader["comSector"].ToString();
                data[5]= reader["comCity"].ToString();
                data[6]= reader["comAdress"].ToString();
                data[7] = reader["comLogo"].ToString();
            }
            closeConnection();

            return data;
        }
       
        public DataSet getJobs()
        {
            DataSet _dataSet = new DataSet();
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select * from isler";
            command.Connection = connection;
            openConnection();
            DataTable dataT = new DataTable();
            _dataSet.Tables.Add(dataT);
            MySqlDataAdapter link = new MySqlDataAdapter(command);
            link.Fill(dataT);
            closeConnection();

            return _dataSet;
        }
        public void openConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {
                //Connection is open already..
            }
        }
        public void closeConnection()
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
            else
            {
                //connection is closed already..
            }
        }
        
        public void executeSqlCommand(string commandText)
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = commandText;
            openConnection();
            command.ExecuteNonQuery();
            closeConnection();
        }
        public object getSqlData(string commandText)
        {
            object comingData;
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = commandText;
            openConnection();
            comingData = command.ExecuteScalar();
            closeConnection();
            return comingData;
        }
        /*public string[] readStringData(string commandText)
        {
            string[] values;
            int counter = 0;
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = commandText;
            openConnection();
            MySqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                values[counter]=read

                counter++;
            }
            closeConnection();
        }*/

        public bool logIn(string userName, string password)
        {
            bool state = false;
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel where eMail='" + userName + "'";
            openConnection();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                if (reader[5].ToString() == password)
                {
                    state = true;
                }
            }
            closeConnection();
            return state;

        }
        public bool register(string uName,string pw,string eMail,string name,string surName)
        {
            bool state = true;
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            openConnection();
            MySqlCommand checkCommand = new MySqlCommand();
            checkCommand.Connection = connection;
            checkCommand.CommandText = "select ([eMail]) from  uyeBireysel where eMail='"+eMail+"'";
            MySqlDataReader checkReader = checkCommand.ExecuteReader();
            while(checkReader.Read())
            {
                if (checkReader["eMail"].ToString() == eMail)
                    state = false;
            }
            checkReader.Close();
            if (state == true)
            {
                command.CommandText = "insert into uye_Bireysel (userName,password,eMail,name,surname) values ('" + uName + "','" + pw + "','" + eMail + "','" + name + "','" + surName + "')";
                command.ExecuteNonQuery();
            }
            closeConnection();
            return state;
        }

    }
}