using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class LoginToShowAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable data = LoginAdmin.SelectById(1);
            if (txtUser.Text == data.Rows[0]["User_Name"].ToString() && txtPassword.Text == data.Rows[0]["Password"].ToString())
            {
                Response.Redirect("ShowAdmin.aspx");
            }

            else
                lblError.Text = "Error user name or password";
        }
    }
}