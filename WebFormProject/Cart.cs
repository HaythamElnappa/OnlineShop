using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebFormProject
{
    public class Carts
    {
        public static DataTable getTotalCartPrice(string User_id)
        {
            string statement = $"select sum(c.Quantity* (p.Price -p.Price * p.Promotion) )AS Tprice FROM Cart AS c INNER JOIN Product AS p ON c.P_Id = p.P_Id INNER JOIN Category AS cat ON p.Cat_Id = cat.Cat_Id WHERE(c.User_Id = {int.Parse(User_id)}) and O_Id is null";
            return Connection.MyDataTable(statement);
        }



        public static DataTable getById(string User_id, string Product_id)
        {
            string statement = $"select c.User_Id,c.Quantity,p.Cat_Id,p.P_Id,p.Name,p.Price,p.Image_path,p.Promotion,p.Quantity from cart c ,Product p where c.P_Id = p.P_Id and c.User_Id = {int.Parse(User_id)} and p.P_Id = {int.Parse(Product_id)} and c.O_Id  Is NOT null";
            return Connection.MyDataTable(statement);
        }
        ////////////////
        public static DataTable SelectAll()
        {
            string state = $"select * from Cart";
            return Connection.MyDataTable(state);
        }
        public static DataTable SelectById(int id)
        {
            string state = $"select c.*, p.name  from Cart c, Pruduct p where c.User_Id = {id} and c.P_Id = p.P_Id";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectByUserId(int id)
        {
            string state = $"select c.Cart_Id  from Cart c where c.User_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static int Insert(Cart_Attripute cart)
        {
            string state = $"insert into Cart (User_Id, Quantity, P_Id) values ({cart.User_Id}, {cart.Quantity}, {cart.Product_Id})";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(Cart_Attripute cart, int productId)
        {
            string state = $"Update Cart set Quantity = {cart.Quantity} where User_Id = {cart.User_Id}, P_Id = {productId}";
            return Connection.ExecuteNonQuery(state);
        }
        ////////////////////i edit this/////////////////////// 


        public static int Update(Cart_Attripute cart)
        {
            string state = $"Update Cart set Quantity = {cart.Quantity} where User_Id = {cart.User_Id} and P_Id = {cart.Product_Id}";
            return Connection.ExecuteNonQuery(state);
        }
        public static int Delete(int Id)
        {
            string state = $"Delete * from Cart where User_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int DeleteACartProduct(int User_Id, int Product_id)
        {
            string state = $"Delete from Cart where User_Id = {User_Id} and P_Id ={Product_id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static DataTable GetTotalProductQuantity(int Product_id)
        {
            string statement = $"SELECT  Quantity FROM Product where P_Id = {Product_id}";
            return Connection.MyDataTable(statement);
        }
    }
}