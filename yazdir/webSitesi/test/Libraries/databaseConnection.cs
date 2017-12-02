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
        #region Mysql Conn String
        MySqlConnection connection = new MySqlConnection("Server=furkanalniak.com;Database=furkanal_yazdir;Convert Zero Datetime=True;Uid=furkanal_admin;Pwd='fk2017';");
        #endregion

        public databaseConnection()
        {

        }
        public string findUserId(string eMai)
        {
            MySqlCommand findIdCommand = new MySqlCommand("select id,eMail from uye_Bireysel where eMail='"+eMai+"'", connection);
            openConnection();
            MySqlDataReader dataRead = findIdCommand.ExecuteReader();
            string _userId="";
            while (dataRead.Read())
            {
                _userId = (dataRead["id"].ToString());
               
            }
            dataRead.Close();
            closeConnection();
            return _userId;
        }
        public int[] getAssignedJobLinks(string userId)
        {

            MySqlCommand countCommand = new MySqlCommand("select COUNT(id),ad_appPersonid from isler where ad_appPersonid LIKE '%." + userId + ".%'", connection);
            openConnection();
            int jobCount = Convert.ToInt16(countCommand.ExecuteScalar());
            closeConnection();
            int[] _jobs = new int[jobCount];
            int c = 0;
            MySqlCommand command = new MySqlCommand("select id  from isler where ad_appPersonid LIKE '%." + userId + ".%'", connection);
            openConnection();
            MySqlDataReader dataRead = command.ExecuteReader();
            while (dataRead.Read())
            {
                _jobs[c] = Convert.ToInt16(dataRead["id"]);
                c++;
            }
            dataRead.Close();
            closeConnection();
            return _jobs;
        }
        
        public string[] getAssignedJobList(string userId)
        {

            string[] idList;
            MySqlCommand countCommand = new MySqlCommand("select COUNT(ad_ownerCompany) from isler where ad_appPersonid LIKE '%."+userId+".%'", connection);
            openConnection();
            totalCount = Convert.ToInt16(countCommand.ExecuteScalar());
            idList = new string[totalCount];
            jobType = new string[totalCount];
            jobHeader = new string[totalCount];
            jobPrice = new string[totalCount];
            jobDate = new string[totalCount];
            jobLevel = new string[totalCount];
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select * from isler where ad_appPersonid LIKE '%." + userId + ".%'";
            command.Connection = connection;
            MySqlDataReader dataRead = command.ExecuteReader();
            int count = 0;
            while (dataRead.Read())
            {
                idList[count] = dataRead["ad_ownerCompany"].ToString();
                jobType[count] = dataRead["ad_jobType"].ToString();
                jobHeader[count] = dataRead["ad_header"].ToString();
                jobPrice[count] = dataRead["ad_price"].ToString();
                jobDate[count] = dataRead["ad_date"].ToString();
                jobLevel[count] = dataRead["ad_level"].ToString();
                count++;
            }
            closeConnection();

            return idList;
        }

        public int totalCount;
        public string[] jobType, jobHeader, jobPrice, jobDate, jobLevel;
        public bool logInAdmin(string uName,string pword)
        {
            bool logged = false;
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from managers where userName='"+uName+"'";
            openConnection();
            MySqlDataReader readLogIn = command.ExecuteReader();
            while(readLogIn.Read())
            {
                if((readLogIn[2].ToString()==pword) && readLogIn[6].ToString()=="1")
                {
                    logged = true;
                }
            }
            closeConnection();

            return logged;
        }
        public bool updateEditor(string editorUname,string pwd, string mail,string name,string surname)
        {
            try
            {
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "update managers set password='" + pwd + "', eMail='" + mail + "', name='" + name + "' , surname='" + surname + "' where userName='" + editorUname + "'";
                openConnection();
                command.ExecuteNonQuery();
                closeConnection();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool deleteEditor(string editorUname)
        {
            try
            {
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "delete from managers where userName='"+editorUname+"' and yetki='2'";
                openConnection();
                command.ExecuteNonQuery();
                closeConnection();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public string[] editorMail,editors;
        public int editorCount;
        public string[] editorListesi()
        {
            int i = 0;
            MySqlCommand countCommand = new MySqlCommand("select count(*) from managers where yetki='2'", connection);
            openConnection();
            editorCount = Convert.ToInt16(countCommand.ExecuteScalar());
            closeConnection();
            //
            editors = new string[editorCount];
            editorMail = new string[editorCount];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from managers where yetki='2'";
            openConnection();
            MySqlDataReader readEditors = command.ExecuteReader();
            while(readEditors.Read())
            {
                editors[i] = readEditors["userName"].ToString();
                editorMail[i] = readEditors["eMail"].ToString();
                i++;

            }
            closeConnection();

            return editors;
        }

        public string[] adminMail, admins;
        public int adminCount;
        public string[] adminListesi()
        {
            int i = 0;
            MySqlCommand countCommand = new MySqlCommand("select count(*) from managers where yetki='1'", connection);
            openConnection();
            adminCount = Convert.ToInt16(countCommand.ExecuteScalar());
            closeConnection();
            //
            admins = new string[adminCount];
            adminMail = new string[adminCount];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from managers where yetki='1'";
            openConnection();
            MySqlDataReader readAdmins = command.ExecuteReader();
            while (readAdmins.Read())
            {
                admins[i] = readAdmins["userName"].ToString();
                adminMail[i] = readAdmins["eMail"].ToString();
                i++;

            }
            closeConnection();

            return admins;
        }
        public string[] userMail, users;
        public int userCount;
        public string[] userListesi()
        {
            int i = 0;
            MySqlCommand countCommand = new MySqlCommand("select count(*) from uye_Bireysel", connection);
            openConnection();
            userCount = Convert.ToInt16(countCommand.ExecuteScalar());
            closeConnection();
            //
            users = new string[userCount];
            userMail = new string[userCount];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel";
            openConnection();
            MySqlDataReader readUsers = command.ExecuteReader();
            while (readUsers.Read())
            {
                users[i] = readUsers["userName"].ToString();
                userMail[i] = readUsers["eMail"].ToString();
                i++;

            }
            closeConnection();

            return users;
        }


        public bool deleteUser(string userName)
        {
            try
            {
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "delete from uye_Bireysel where userName='" + userName + "'";
                openConnection();
                command.ExecuteNonQuery();
                closeConnection();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool deleteAdmin(string adminUname)
        {
            try
            {
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "delete from managers where userName='" + adminUname + "' and yetki='1'";
                openConnection();
                command.ExecuteNonQuery();
                closeConnection();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public string[] getEditorInformation(string editorUname)
        {
            string[] editor = new string[4];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from managers where userName='" + editorUname + "' and yetki=2";
            connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                editor[0] = reader[2].ToString();//password
                editor[1] = reader[3].ToString();//eMail
                editor[2] = reader[4].ToString();//İsim
                editor[3] = reader[5].ToString();//Soyisim
               
            }
            connection.Close();
            reader.Close();

            return editor;
        }
        public string[] getUserInformationForDelete(string userName)
        {
            string[] user = new string[4];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from uye_Bireysel where userName='" + userName + "'";
            connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                user[0] = reader[5].ToString();//password
                user[1] = reader[7].ToString();//eMail
                user[2] = reader[2].ToString();//İsim
                user[3] = reader[3].ToString();//Soyisim

            }
            connection.Close();
            reader.Close();

            return user;
        }
        public string[] getAdminInformation(string adminUname)
        {
            string[] admin = new string[4];
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from managers where userName='" + adminUname + "' and yetki=1";
            connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                admin[0] = reader[2].ToString();//password
                admin[1] = reader[3].ToString();//eMail
                admin[2] = reader[4].ToString();//İsim
                admin[3] = reader[5].ToString();//Soyisim

            }
            connection.Close();
            reader.Close();

            return admin;
        }
        public string getUserCount()
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(id) from uye_Bireysel";
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();

            return total.ToString();
        }
        public string getCompany()
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(id) from uye_Kurumsal";
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();

            return total.ToString();
        }
        public string getConfirmedJobs()
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(id) from isler where confirm='1' and ad_state='0'";
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();

            return total.ToString();
        }
        public string getDoneJobs()
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(id) from doneJobs ";
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();

            return total.ToString();
        }
        public string getUnconfirmedJobs()
        {
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(id) from isler where ad_state=0 and confirm=0";
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();

            return total.ToString();
        }
        public string[] adHeader, adOwner, adContent, adPrice, adLevel, adContract, adType;
        public DataSet unConfirmedJobs()
        {
            DataSet _dataSet = new DataSet();
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select * from isler where confirm=0";
            command.Connection = connection;
            openConnection();
            DataTable dataT = new DataTable();
            _dataSet.Tables.Add(dataT);
            MySqlDataAdapter link = new MySqlDataAdapter(command);
            link.Fill(dataT);
            closeConnection();

            return _dataSet;
        }
        public int unConfirmedJobCount;
        public string[] adID;
        public string[] getUnconfirmedJobsDetail()
        {
            int limit = unConfirmedJobsCount(),i=0;
            unConfirmedJobCount = limit;
            adHeader = new string[limit];adOwner = new string[limit]; adContent = new string[limit]; adPrice = new string[limit]; adLevel = new string[limit]; adContract = new string[limit]; adType = new string[limit];
            adID = new string[limit];
            MySqlCommand command = new MySqlCommand("select * from isler where confirm=0",connection);
            openConnection();
            MySqlDataReader jobReader = command.ExecuteReader();
            while(jobReader.Read())
            {
                adID[i]= jobReader["id"].ToString();
                adHeader[i] = jobReader["ad_header"].ToString();
                adOwner[i] = jobReader["ad_ownerCompany"].ToString();
                adContent[i] = jobReader["ad_content"].ToString();
                adPrice[i] = jobReader["ad_price"].ToString();
                adLevel[i] = jobReader["ad_level"].ToString();
                adContract[i] = jobReader["ad_contract"].ToString();
                adType[i] = jobReader["ad_jobType"].ToString();

                i++;

            }
            closeConnection();
            return adHeader;
        }
        private int unConfirmedJobsCount()
        {
            MySqlCommand command = new MySqlCommand("select count(*) from isler where confirm=0",connection);
            openConnection();
            int total = Convert.ToInt16(command.ExecuteScalar());
            closeConnection();
            return total;
        }
     
        
        public int[] getJobLinks()
        {
            MySqlCommand countCommand = new MySqlCommand("select COUNT(id) from isler", connection);
            openConnection();
            int jobCount = Convert.ToInt16(countCommand.ExecuteScalar());
            closeConnection();
            int[] _jobs = new int[jobCount];
            int c = 0;
            MySqlCommand command = new MySqlCommand("select id  from isler", connection);
            openConnection();
            MySqlDataReader dataRead = command.ExecuteReader();
            while (dataRead.Read())
            {
                _jobs[c] = Convert.ToInt16(dataRead["id"]);
                 c++;
            }
            dataRead.Close();
            closeConnection();
            return _jobs;

        }
        public string[] getJobListID()
        {
            string[] idList;
            MySqlCommand countCommand = new MySqlCommand("select COUNT(ad_ownerCompany) from isler where confirm=1", connection);
            openConnection();
            totalCount = Convert.ToInt16(countCommand.ExecuteScalar());
            idList = new string[totalCount];
            jobType= new string[totalCount];
            jobHeader= new string[totalCount];
            jobPrice= new string[totalCount];
            jobDate= new string[totalCount];
            jobLevel= new string[totalCount];
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select * from isler where confirm=1";
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
        DateTime dt = DateTime.Now;
        public void EditorEkleLog(string uName,string data)
        {
            dt = DateTime.Now;
            string format = "yyyy-MM-dd HH:mm:ss";
            var zamanim = dt.ToString(format);
            MySqlCommand command = new MySqlCommand("insert into log (who,log,date,type) values ('"+uName+"','"+data+" kullanıcı adına sahip editör eklendi"+"','"+zamanim+"',0)", connection);
            openConnection();
            command.ExecuteNonQuery();
            closeConnection();
        }
        public void EditorSilLog(string uName, string data)
        {
            dt = DateTime.Now;
            string format = "yyyy-MM-dd HH:mm:ss";
            var zamanim = dt.ToString(format);
            MySqlCommand command = new MySqlCommand("insert into log (who,log,date,type) values ('" + uName + "','" + data+" kullanıcı adına sahip editor silindi." + "','" + zamanim + "',0)", connection);
            openConnection();
            command.ExecuteNonQuery();
            closeConnection();
        }
        public void EditorDuzenlelLog(string uName, string data)
        {
            dt = DateTime.Now;
            string format = "yyyy-MM-dd HH:mm:ss";
            var zamanim = dt.ToString(format);
            MySqlCommand command = new MySqlCommand("insert into log (who,log,date,type) values ('" + uName + "','" + data + " kullanıcı adına sahip editör düzenlendi."+"','" + zamanim + "',0)", connection);
            openConnection();
            command.ExecuteNonQuery();
            closeConnection();
        }
        private int logAdet()
        {
            MySqlCommand command = new MySqlCommand("select count(*) from log", connection);
             int sayi = Convert.ToInt16(command.ExecuteScalar());
            return sayi;

        }
        public string[] logg, tarih;
        //public string logCek()
        //{
        //    int sayi = logAdet();
        //    logg = new string[sayi];tarih = new string[sayi];
        //    string[] uNames;
        //    uNames = new string[sayi];
        //    int i = 0;
        //    MySqlCommand command = new MySqlCommand("select * from log", connection);
        //    openConnection();
        //    MySqlDataReader dr = command.ExecuteReader();
        //    while(dr.Read())
        //    {
        //        uNames[i] = dr[1].ToString();

        //            i++;
        //    }

        //    return uNames;
        //}
    }
}