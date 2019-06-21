using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("MyCookie");

            DataTable dataTable = Users.SelectByEmail(txtLoginEmail.Text, txtLoginPassword.Text);
            DataTable dataTable1 = Admins.SelectAllAdmin();
            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0; i < dataTable1.Rows.Count; i++)
                {
                    if (dataTable.Rows[0]["User_Id"].ToString() == dataTable1.Rows[i]["User_Id"].ToString())
                    {
                        
                        cookie["userId"] = dataTable.Rows[0]["User_Id"].ToString();
                        cookie.Expires.AddDays(30);
                        Response.Cookies.Add(cookie);
                        Response.Redirect($"AdminHome.aspx?userId={dataTable.Rows[0]["User_Id"].ToString()}");//QueryString
                    }
                }

                if (dataTable.Rows[0]["State"].ToString() == "True")
                {
                    
                    cookie["userId"] = dataTable.Rows[0]["User_Id"].ToString();
                    cookie.Expires.AddDays(30);
                    Response.Cookies.Add(cookie);
                    Response.Redirect($"Home.aspx?userId={dataTable.Rows[0]["User_Id"].ToString()}");//QueryString
                    
                }
                else
                {
                    Label1.Text = "Wait List";
                }

            }

            else
            {
                Label1.Text = "Invalid Email Or Password";
            }

        }
    }
}