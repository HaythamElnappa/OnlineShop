using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class Proudect_Detailes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                DataTable dt = Product.getById(Request.QueryString["producetId_fordetails"]);   //"1" is product_id for test (will be changed when product page complete)
                productName.InnerHtml += dt.Rows[0][3].ToString();

                if (dt.Rows[0][7].ToString() == "0")//if promotion == 0
                {
                    price.InnerHtml = dt.Rows[0][4].ToString() + " EG";
                    Label_OldPrice.Text = "";
                }
                else
                {
                    var new_price = decimal.Parse(dt.Rows[0]["Price"].ToString()) - decimal.Parse(dt.Rows[0]["Price"].ToString()) * decimal.Parse(dt.Rows[0][7].ToString());
                    price.InnerHtml = $"{(new_price).ToString()} EG";
                    Label_inSteadOf.Text = "instead of ";
                    Label_OldPrice.Text = $" { dt.Rows[0][4].ToString()} EG";

                }
                Promotion.InnerHtml += (double.Parse(dt.Rows[0][7].ToString()) * 100).ToString() + "%";
                description.InnerHtml = dt.Rows[0][5].ToString();


                Image_Product.ImageUrl = dt.Rows[0][6].ToString();// ~/Images/sam.jpg;

                //
                ViewState.Add("product_id", dt.Rows[0][2].ToString());


                //                Cat_Id Name    P_Id Name    Price Description Image_path Promotion   Quantity Cat_Id
                //1   mobiles 1   samsong mob 1000.00 hgh,hgnnnnnnnnnbbbbbbbbbhhhhhhhhhhnnnnnnnnmjjjjjj sam.png 0   20  1
                //fill all categories in list in navigation
                DataTable categories = Category.SelectAll();
                foreach (DataRow row in categories.Rows)
                {
                    catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                }
            }
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("ShoppingCookie");
            //cookie["product_id"] = ViewState["product_id"].ToString();
            //cookie.Expires.AddDays(1);
            //Response.Cookies.Add(cookie);

            //////////////////////////////////////////////////////////////////
            // insert in cart table .
            //عشان اعرف اميز كل كارت واعرفها بتاعه مين هنخلي ال  
            // cart_id = user_id 
            // وبكده لقدر اعرض الكات لليوزر اللي ليهم نفس ال id

            HttpCookie cookie = Request.Cookies["MyCookie"];

            if (cookie != null)
            {
                int user_id = int.Parse(cookie["userId"].ToString());
                //string user_id = "1";// can get it by session for ex.
                string product_id = ViewState["product_id"].ToString(); // =1 for testing.

                //check cart if not existed ==> insert.
                DataTable dt = Carts.getById(user_id.ToString(), product_id);
                if (dt.Rows.Count == 0)
                {
                    Carts.Insert(new Cart_Attripute { User_Id = user_id, Product_Id = int.Parse(product_id), Quantity = 1 });
                }

                
                Response.Redirect("Cart.aspx");
            }

            else
                Response.Redirect("LogIn.aspx");


        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //for sarch in navigation
            Response.Redirect($"RESULT.aspx?searchof={txtsearch.Text}");
        }
    }
}