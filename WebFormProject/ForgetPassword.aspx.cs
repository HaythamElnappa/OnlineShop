using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable data = LoginAdmin.SelectById(1);
            if (txtQuation.Text == data.Rows[0]["Quation"].ToString() && txtAnswer.Text == data.Rows[0]["Answer"].ToString())
            {
                txtUser.Visible = true;
                txtPass.Visible = true;
                txtAnswer.Visible = false;
                txtQuation.Visible = false;
                Button1.Visible = false;
                Button2.Visible = true;
                Label1.Text = "Enter new user name";
                Label2.Text = "Enter new password";

            }

            else
                lblError.Text = "Error quation or answer plz, enter them valid";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LoginAdmin_attripute login = new LoginAdmin_attripute { Quation = txtQuation.Text, Answer = txtAnswer.Text, Password = txtPass.Text, UserName = txtUser.Text };
            int x = LoginAdmin.Update(login, 1);
            if (x == 1)
                Response.Redirect("LoginToShowAdmin.aspx");
        }
    }
}