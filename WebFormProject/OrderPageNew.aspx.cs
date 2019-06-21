using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebFormProject
{
    public partial class OrderPageNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["MyCookie"];

                if (cookie != null)
                {
                    int myIdUser = int.Parse(cookie["userId"].ToString());

                    GridView1.DataSource = Order.getALLOrdersOfOneUser(myIdUser);
                    GridView1.DataBind();
                }

                else
                    Response.Redirect("LogIn.aspx");
            }
        }
    }
}