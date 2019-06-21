using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebFormProject
{
    public class Admins
    {
        public static DataTable Select()
        {
            string state = $"select u.* from Admin a, Users u, LoginAdmin l where User_Id = Id_Admin and Id_Admin != l.Id_Login_Admin";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectAllAdmin()
        {
            string state = $"select u.* from Admin a, Users u where User_Id = Id_Admin";
            return Connection.MyDataTable(state);
        }

        public static int Insert(int id)
        {
            string state = $"insert into Admin (Id_Admin) values ('{id}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int id)
        {
            string state = $"Delete from Admin where Id_Admin = {id}";
            return Connection.ExecuteNonQuery(state);
        }
    }
}