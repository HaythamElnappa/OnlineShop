using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class OrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                HttpCookie cookie = Request.Cookies["MyCookie"];

                if (cookie != null)
                {
                    int user_id = int.Parse(cookie["userId"].ToString());
                    //string user_id = "1";// can get it by session for ex. //cart_id = user_id.
                    DataTable dt = Order.getUserById(user_id);


                    //User_name.InnerText += dt.Rows[0]["Name"].ToString();
                    //User_address.InnerText += dt.Rows[0]["Address"].ToString();


                    DataTable dt2 = Order.getALLOrdersOfUser(user_id);
                    foreach (DataRow row in dt2.Rows)
                    {

                        //O_Id, O_State, Address, O_Date, Rate, Cart_Id, User_Id, Driv_Id 
                        string order_id = row["O_Id"].ToString();
                        ordernum.InnerHtml = order_id;
                        string O_State = row["O_State"].ToString();
                        state.InnerHtml = O_State;
                        string Address = row["Address"].ToString();
                        string O_Date = row["O_Date"].ToString();
                        string Rate = row["Rate"].ToString();
                        string Cart_Id = row["Cart_Id"].ToString();
                        string User_Id = row["User_Id"].ToString();
                        string Driv_Id = row["Driv_Id"].ToString();


                        DataTable dt_OrderProducts = Order.getALLOrder_Products(row["O_Id"].ToString(), User_Id);
                        foreach (DataRow p_Row in dt_OrderProducts.Rows)
                        {
                            //c.Cart_Id, c.Quantity, c.Quantity * (p.Price - p.Price * p.Promotion) AS Tprice, c.P_Id, p.Name, p.Price - p.Price * p.Promotion AS price,
                            //p.Image_path, p.Promotion, p.Quantity AS product_Quantity, cat.Name AS cat_Name

                            string Image_path = p_Row["Image_path"].ToString();
                            string productName = p_Row["Name"].ToString();
                            string cat_Name = p_Row["cat_Name"].ToString();
                            string quantityInCart = p_Row["Quantity"].ToString();
                            string P_Id = p_Row["P_Id"].ToString();
                            string promotedPrice = p_Row["price"].ToString();
                            string TPrice = p_Row["Tprice"].ToString();
                            allprice.InnerHtml = TPrice;


                            req.InnerHtml += $"<li>{productName}</li>";


                            //   $" < div class=\"row bg-light border border-dark\" id=\"row\"> " +


                            //      $"   <div class=\"col-md-3 my-auto\" > " +
                            //       $"      <asp:Image ID = \"Image_product\" runat=\"server\" CssClass=\" \"  ImageUrl='{Image_path}' Height=\"150\" Width=\"150\" />  " +
                            //      $"   </div> <div class=\"col-md-3 my-auto\" > " +
                            //      $"      <div class=\"row\" > " +
                            //      $"          <div class=\"col-md-8\"> " +
                            //      $"               <h2><asp:Label ID = \"Label_productName\" runat=\"server\" Text='{productName}'></asp:Label></h2> " +
                            //      $"      <h4 class=\"text-secondary\" ><asp:Label ID = \"Label_category\" runat=\"server\" Text='{cat_Name}'></asp:Label></h4> " +
                            //      $"          </div> <div class=\"col-md-4 my-auto\" >  " +
                            //      $"             <h6 class=\"text-center\" >Quantity</h6>  " +
                            //      $"              <p class=\"text-center\" ><asp:Label ID = \"Label_quantityInCart\" runat=\"server\" Text='{quantityInCart}'></asp:Label></p>  " +
                            //      $"          </div></div> </div>  " +
                            //      $"  <div class=\"col-md-3 my-auto\" >  " +
                            //      $"    <h6 class=\"text-center\" >Edit Quantity</h6>    " +
                            // $" <h6 class=\"text-center\" >      <asp:TextBox ID = \"txt_edit\" CssClass='{P_Id}' runat=\"server\"  OnTextChanged=\"TextBox1_TextChanged\" TextMode=\"Number\" Width=\"50\" CausesValidation=\"True\" style=\"border-style: outset; \" ></asp:TextBox></h6>  " +


                            // $"      </div> <div class=\"col-md-3 my-auto\" > " +
                            // $"           <div class=\"row\" > " +
                            // $"           <div class=\"col-6\" > " +
                            // $"               <h6 class=\"text-center my-auto\" >Price</h6>  " +
                            // $"      <h6 class=\"text-center my-auto\" >  <asp:Label ID = \"Label_promotedPrice\" runat=\"server\" Text='{promotedPrice}'></asp:Label></h6>  " +
                            // $"       </div> <div class=\"col-md-6 my-auto\" >  " +
                            // $"      <asp:ImageButton ID = \"ImageButton_Remove\" runat=\"server\" Height=\"75px\" ImageUrl=\"img/recycle-bin.png\" OnClick=\"ImageButton_Remove_Click\" Width=\"75px\" CommandArgument='{P_Id}' CommandName=\"Remove_product_fromCart\" />   " +

                            //$"            </div></div></div></div> ";
                        }
                    }
                }

                else
                    Response.Redirect("LogIn.aspx");
                }
            




                //DataList1.DataSource = dt2;
                //DataList1.DataBind();

                // logic code

                //DataTable categories = Category.SelectAll();
                //foreach (DataRow row in categories.Rows)
                //{
                //    catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                //}


            

            // SqlDataSource1.SelectCommand = $"SELECT O_Id, O_State, Address, O_Date, Rate, Cart_Id, User_Id, Driv_Id FROM Orders WHERE (User_Id = {int.Parse(user_id)})";


            //string q2 = $"SELECT O_Id, O_State, Address, O_Date, Rate, Cart_Id, User_Id, Driv_Id FROM Orders WHERE (User_Id = {int.Parse(user_id)})";

            //string q = $"SELECT c.Cart_Id, c.Quantity, c.Quantity * (p.Price - p.Price * p.Promotion) AS Tprice, c.P_Id, p.Name, p.Price - p.Price * p.Promotion AS price, p.Image_path, p.Promotion, p.Quantity AS product_Quantity, cat.Name AS cat_Name FROM Cart AS c INNER JOIN Product AS p ON c.P_Id = p.P_Id INNER JOIN Category AS cat ON p.Cat_Id = cat.Cat_Id INNER JOIN Orders AS o ON c.O_Id = o.O_Id WHERE(o.O_Id IS NOT NULL) and o.O_id = {1}  AND(c.Cart_Id = { int.Parse(user_id)})";            //SqlDataSource2.SelectCommand += $" ";

        }
    }
}