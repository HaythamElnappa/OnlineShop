using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // string user_id = "1";// can get it by session for ex. //cart_id = user_id.

            HttpCookie cookie = Request.Cookies["MyCookie"];

            if (cookie != null)
            {
                int user_id = int.Parse(cookie["userId"].ToString());
                SqlDataSource1.SelectCommand += $"(c.User_Id = {user_id}) and O_id IS Null";

                if (!IsPostBack)
                {

                    DataTable fillfooter = Product.SelectLastfivepormotion();
                    foreach (DataRow row in fillfooter.Rows)
                    {
                        pormotionlist.InnerHtml += $"<li class=\"h6 text-left \"><a href=\"Proudect-Detailes.aspx?producetId_fordetails={row["P_Id"].ToString()}\">{row["Name"].ToString()}</a> </li>";

                    }
                    DataTable fillfooter2 = Product.SelectLastfiveProdeuct();
                    foreach (DataRow row in fillfooter2.Rows)
                    {
                        lastprouduect.InnerHtml += $"<li class=\"h6 text-left \"><a href=\"Proudect-Detailes.aspx?producetId_fordetails={row["P_Id"].ToString()}\">{row["Name"].ToString()}</a> </li>";

                    }
                    DataTable categories = Category.SelectAll();
                    foreach (DataRow row in categories.Rows)
                    {
                        catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                    }
                }
                //string user_id = "1";// can get it by session for ex. //cart_id = user_id.
                DataTable dt = Carts.getTotalCartPrice(user_id.ToString());
                CartTotalPrice.InnerHtml += $"<h4 class=\"\">Total Cart Price: {dt.Rows[0][0].ToString()} EG</h4>";
            }
            else
                Response.Redirect("LogIn.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //for sarch in navigation
            Response.Redirect($"RESULT.aspx?searchof={txtsearch.Text}");
        }
        protected void ImageButton_Remove_Click(object sender, ImageClickEventArgs e)
        {
            // remove product from cart 

            //		((System.Web.UI.WebControls.ImageButton)sender).CommandArgument = clicked product_id is string
            HttpCookie cookie = Request.Cookies["MyCookie"];

            if (cookie != null)
            {
                int user_id = int.Parse(cookie["userId"].ToString());
                string product_id_toRemove = ((System.Web.UI.WebControls.ImageButton)sender).CommandArgument;
                //string user_id = "1";// can get it by session for ex. //cart_id = user_id.

                Carts.DeleteACartProduct(user_id, int.Parse(product_id_toRemove));
                Response.Redirect("Cart.aspx");
            }

            else
                Response.Redirect("LogIn.aspx");
        }






        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            // selecttotal quantity of product :
            HttpCookie cookie = Request.Cookies["MyCookie"];

            if (cookie != null)
            {
                int user_id = int.Parse(cookie["userId"].ToString());
                string product_id_toEdit = ((TextBox)sender).CssClass;
                //string user_id = "1";// can get it by session for ex. //cart_id = user_id.
                DataTable dt = Carts.GetTotalProductQuantity(int.Parse(product_id_toEdit));
                if (int.Parse(dt.Rows[0][0].ToString()) > int.Parse(((TextBox)sender).Text))
                {
                    Cart_Attripute cart = new Cart_Attripute()
                    {
                        User_Id = user_id,
                        Product_Id = int.Parse(product_id_toEdit),
                        Quantity = int.Parse(((TextBox)sender).Text)
                    };

                    Carts.Update(cart);
                }
                else
                {

                }



                Response.Redirect("Cart.aspx");
            }

            else
                Response.Redirect("LogIn.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // check count of product in user cart.
            //if count !=0 =>> insert order then select the last order_id added then update the order_id = that id instead of null
            HttpCookie cookie = Request.Cookies["MyCookie"];

            if (cookie != null)
            {
                int User_id = int.Parse(cookie["userId"].ToString());

                //int User_id = 1; // get by login session.


                DataTable dtC = Order.getMyCartProduct_Count(User_id);
                int myCartProduct_Count = int.Parse(dtC.Rows[0][0].ToString());
                if (myCartProduct_Count != 0)
                {
                    DataTable d = Carts.SelectByUserId(User_id);
                    int id = int.Parse(d.Rows[d.Rows.Count - 1]["Cart_Id"].ToString());
                    Order_Attripute o = new Order_Attripute { Address = "aaa", Cart_Id = id, Date = new Date { Day = DateTime.Now.Day, Month = DateTime.Now.Month, Year = DateTime.Now.Year }, Rate = 1, State = 1, User_Id = User_id };
                    Order.Insert(o);


                    DataTable dt = Order.getLastOrder_Id();
                    int order_id = int.Parse(dt.Rows[0][0].ToString());
                    Order.UpdateCart(order_id);

                    Response.Redirect("OrderPageNew.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");

                }

            }

            else
                Response.Redirect("LogIn.aspx");
        }
    }
}