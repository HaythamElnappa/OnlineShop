using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable data = LoginAdmin.SelectById(1);
            LoginAdmin_attripute login = new LoginAdmin_attripute { Answer = txtAnswer.Text, Password = txtNewPass.Text, Quation = txtQuation.Text, UserName = txtUser.Text };

            if (txtOldPass.Text == data.Rows[0]["Password"].ToString())
            {
                int x = LoginAdmin.Update(login, 1);
                if (x == 1)
                    Response.Redirect("ShowAdmin.aspx");
            }

            else
                lblError.Text = "Error old password";
        }
    }
}