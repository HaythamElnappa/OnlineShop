using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Product
    {
        public static DataTable SelectAll()
        {
            string state = $"select * from Product";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectById(int id)
        {
            string state = $"select * from Product where P_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByCategory(int id)
        {
            string state = $"select * from Product where Cat_Id = {id}";
            return Connection.MyDataTable(state);

        }

        public static int Insert(Product_Attripute p)
        {
            string state = $"insert into Product (Name, Price, Description, Image_path, Promotion, Quantity, Cat_Id) values ('{p.Name}', '{p.Price}', '{p.Description}', '{p.Image_path}', '{p.Promotion}', '{p.Quantity}', '{p.Cat_Id}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(Product_Attripute p, int id)
        {
            string state = $"Update Product set Name = '{p.Name}', Price = {p.Price}, Description = '{p.Description}', Image_path = '{p.Image_path}', Promotion = '{p.Promotion}', Quantity = {p.Quantity}, Cat_Id= {p.Cat_Id} where P_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete from Product where P_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }

        //--------------------------------------------------------------------------------

        public static DataTable getById(string id)
        {
            string statement = $"select * from Category c , Product p where p.Cat_Id = c.Cat_Id and p.P_Id ={int.Parse(id)}";
            return Connection.MyDataTable(statement);
        }
        public static DataTable SelectByName(string name)
        {
            string state = $"select * from Product where Product.Name like '%{name}%'";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectBycategorylastproduct(string name)
        {
            string state = $"SELECT top 5 Product.* FROM Product,Category where Product.Cat_Id=Category.Cat_Id and Category.Name='{name}'  ORDER BY Product.P_Id   DESC";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectLastfiveProdeuct()
        {
            string state = $"select top 5 * from Product order by product.P_Id desc";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectLastfivepormotion()
        {
            string state = $"select top 5 * from Product where Product.Promotion > 0 order by product.P_Id desc ";
            return Connection.MyDataTable(state);
        }


        public static DataTable Selectproductbycategoryid(int id)
        {
            string state = $"select Product.*  from Product ,Category where Product.Cat_Id=Category.Cat_Id and Category.Cat_Id={id}";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectBycategoryOneLastproduct(string name)
        {
            string state = $"SELECT top 1 Product.* FROM Product,Category where Product.Cat_Id=Category.Cat_Id and Category.Name='{name}'  ORDER BY Product.P_Id   DESC";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByIdForGridView(int id)
        {
            string query = $"select P_Id , Name , Promotion , Quantity , Price  from Product where P_Id = {id} ";
            return Connection.MyDataTable(query);
        }

        public static DataTable SelectAllForGridView()
        {
            string query = "select P_Id , Name , Promotion , Quantity , Price  from Product";
            return Connection.MyDataTable(query);
        }

        public static DataTable getDiscription(int id)
        {
            string query = $"select Description , Image_path from Product where P_Id = {id}";
            return Connection.MyDataTable(query);
        }

    }
}
