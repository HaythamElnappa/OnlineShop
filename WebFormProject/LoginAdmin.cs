using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class LoginAdmin
    {
        public static DataTable SelectById(int id)
        {
            string state = $"select * from LoginAdmin where Id_Login_Admin = {id}";
            return Connection.MyDataTable(state);
        }
        public static int Update(LoginAdmin_attripute L, int id)
        {
            string state = $"Update LoginAdmin set User_Name = '{L.UserName}', Password = '{L.Password}', Quation = '{L.Quation}', Answer = '{L.Answer}' where Id_Login_Admin = {id}";
            return Connection.ExecuteNonQuery(state);
        }
    }
}