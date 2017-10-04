using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace yazdir.webSitesi.test.Libraries
{
    public class databaseConnection
    {
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Uid=furkanal_admin;Pwd='fk2017';");

        databaseConnection()
        {

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