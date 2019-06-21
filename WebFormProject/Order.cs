using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Order
    {

        public static DataTable getMyCartProduct_Count(int user_id)
        {
            string state = $"select COUNT(Cart_Id) from Cart where O_Id is null and User_Id = {user_id} ";
            return Connection.MyDataTable(state);
        }
        public static DataTable getLastOrder_Id()
        {
            string state = $"SELECT TOP (1) O_Id from Orders order by O_Id desc ";
            return Connection.MyDataTable(state);
        }

        public static int UpdateCart(int order_id)
        {
            string state = $"Update Cart set O_id={order_id} where Cart_Id = 1 and O_id is null";
            return Connection.ExecuteNonQuery(state);
        }

        //
        public static DataTable SelectAll()
        {
            string state = $"select * from OrderS";
            return Connection.MyDataTable(state);
        }

        public static DataTable SelectById(int id)
        {
            string state = $"select * from Orders where O_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static int Insert(Order_Attripute o)
        {
            string state = $"insert into Orders (O_State, Address, O_Date, Rate, Cart_Id, User_Id) values ('{o.State}', '{o.Address}', '{o.Date}', '{o.Rate}', '{o.Cart_Id}', '{o.User_Id}')";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(Order_Attripute o, int id)
        {
            string state = $"Update Orders set O_State = {o.State}, Address = {o.Address}, O_Date = {o.Date}, Rate = {o.Rate}, Cart_Id = {o.Cart_Id}, User_Id = {o.User_Id}, Driv_Id = {o.Driv_Id} where O_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Update(int id, int s)
        {
            string state = $"Update Orders set O_State = {s} where O_Id = {id}";
            return Connection.ExecuteNonQuery(state);
        }

        public static int Delete(int Id)
        {
            string state = $"Delete from Orders where O_Id = {Id}";
            return Connection.ExecuteNonQuery(state);
        }

        //----------------------------------------------------------------------

        public static DataTable getALLOrder_Products(string order_id, string cart_id)
        {
            string state = $" SELECT c.Cart_Id, c.Quantity, c.Quantity * (p.Price - p.Price * p.Promotion) AS Tprice, c.P_Id, p.Name, p.Price - p.Price * p.Promotion AS price, p.Image_path, p.Promotion, p.Quantity AS product_Quantity, cat.Name AS cat_Name FROM Cart AS c INNER JOIN Product AS p ON c.P_Id = p.P_Id INNER JOIN Category AS cat ON p.Cat_Id = cat.Cat_Id INNER JOIN Orders AS o ON c.O_Id = o.O_Id WHERE(o.O_Id IS NOT NULL) and (o.O_id = {int.Parse(order_id)}) AND (c.Cart_Id = {int.Parse(cart_id)})";
            return Connection.MyDataTable(state);
        }
        public static DataTable getUserById(int id)
        {
            string state = $"select * from Users where User_Id = {id}";
            return Connection.MyDataTable(state);
        }
        public static DataTable getALLOrdersOfUser(int id)
        {
            string state = $"select O_Id, O_State, Address, O_Date, Rate, Cart_Id, User_Id, Driv_Id from Orders where User_Id = {id}";
            return Connection.MyDataTable(state);
        }

        public static DataTable getALLOrdersOfOneUser(int id)
        {
            string state = $"select o.O_Id, o.O_State, p.Name, p.Price from Orders o, Cart c, Product p where o.User_Id = {id} and O.Cart_Id = c.Cart_Id and c.P_Id = p.P_Id";
            return Connection.MyDataTable(state);
        }


    }
}