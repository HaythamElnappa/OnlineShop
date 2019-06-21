using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Users
    {
        public static DataTable SelectAll()
        {
            string state = $"select * from Users";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByEmail(string email, string password)
        {
            string state = $"select * from Users where Email='{email}' and Password='{password}'";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByEmail(string email)
        {
            string state = $"select * from Users where Email='{email}'";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectAllWithoutAdmin()
        {
            string state = $"select u.* from Users u, Admin a where u.User_Id != a.Id_Admin";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectAllUserById(int id)
        {
            string state = $"select * from Users where User_Id = {id}";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectById(int id)
        {
            string state = $"select * from Users, LoginAdmin where User_Id = {id} and User_Id != Id_Login_Admin";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByAccipt(bool s)
        {
            string state = $"select User_id, Name, Email, Address, State from Users, LoginAdmin where State = '{s}' and User_Id != Id_Login_Admin";
            return Connection.MyDataTable(state);
        }

        public static int Insert(User_Attripute user)
        {
            string state = $"insert into Users (Name, Email, Password, State, Address) values ('{user.Name}', '{user.Email}', '{user.Password}', '{user.State}', '{user.Address}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(User_Attripute user, int id)
        {
            string state = $"Update Users set Name = '{user.Name}', Email = '{user.Email}', Password = '{user.Password}', Address = '{user.Address}' where User_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int UpdateState(bool s, int id)
        {
            string state = $"Update Users set State = '{s}' where User_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete from Users where User_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }
    }
}