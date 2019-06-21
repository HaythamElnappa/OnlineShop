using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Category
    {
        public static DataTable SelectAll()
        {
            string state = $"select * from Category";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectById(int id)
        {
            string state = $"select * from Category where Cat_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static int Insert(Category_Attripute cat)
        {
            string state = $"insert into Category (Name) values ('{cat.Name}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(Category_Attripute cat, int id)
        {
            string state = $"Update Category set Name = {cat.Name} where Cat_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete * from Category where Cat_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }
    }
}