using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Connection
    {
        public static DataTable MyDataTable(string myQuary)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=AspProject;Integrated Security=True");
            SqlCommand myCommand = new SqlCommand(myQuary, myConnection);
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = myCommand;
            adapter.Fill(table);

            return table;
        }

        public static int ExecuteNonQuery(string state)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=AspProject;Integrated Security=True");
            SqlCommand myCommand = new SqlCommand(state, myConnection);
            myConnection.Open();
            int result = myCommand.ExecuteNonQuery();
            myConnection.Close();
            return result;


        }
    }
}