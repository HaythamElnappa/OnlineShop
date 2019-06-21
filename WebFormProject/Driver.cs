using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Driver
    {
        public static DataTable SelectAll()
        {
            string state = $"select * from Driver";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectById(int id)
        {
            string state = $"select * from Driver where D_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static DataTable GetLocation(int id)
        {
            string state = $"select Driver.latitude ,Driver.longitude from Driver where Driver.D_Id = {id};";
            return Connection.MyDataTable(state);
        }

        public static int Insert(Driver_Attripute d)
        {
            string state = $"insert into Driver (Name, Email, Password) values ('{d.Name}', '{d.Email}', '{d.Password}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(Driver_Attripute d, int id)
        {
            string state = $"Update Driver set Name = {d.Name}, Email = {d.Email}, Password = {d.Password} where D_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete * from Driver where D_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int UpdateLocation(int Id , string lat , string lang)
        {
            string state = $"update Driver set latitude = '{lat}' , longitude = '{lang}' where Driver.D_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }
    }
}