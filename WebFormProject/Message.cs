using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace WebFormProject
{
    public class Message
    {
        public static DataTable SelectAll()
        {
            string state = $"select Message.Mss_Id, Message.Body as Message, Users.Name, Users.Email from Message,Users where Message.User_Id = Users.User_Id";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectNewMessages()
        {
            string query = "select Message.Mss_Id, Message.Body as Message, Users.Name, Users.Email from Message,Users where  Message.statues='true' and Message.User_Id = Users.User_Id";
            return Connection.MyDataTable(query);
        }

        public static int Insert(Message_Attripute m)
        {
            string state = $"insert into Message (Bady, User_Id) values ('{m.Body}', '{m.User_Id}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update()
        {
            string query = " update  message set message.statues = 'false' where message.statues = 'true'";
            return Connection.ExecuteNonQuery(query);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete from Message where Mss_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static string CountUnReadMessages()
        {
            SqlConnection connect = new SqlConnection("Data Source=.;Initial Catalog=AspProject;Integrated Security=True");
            SqlCommand com = new SqlCommand("select count(*) from Message where Message.statues='true'",connect);

           
            connect.Open();
            SqlDataReader dr;
            dr = com.ExecuteReader();
            dr.Read();
            string count = dr[0].ToString();
            connect.Close();

            return count;
        }
    }
}