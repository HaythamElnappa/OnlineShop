using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMessage.Text = $"{Users.Insert(new User_Attripute { Name = $"{txtFirstName.Text} {txtLastName.Text}", Email = txtEmail.Text, Password = txtRegisterPassword.Text, Address = txtAddress.Text, State = false })} Rows Affected";
            Response.Redirect("Login.aspx");

        }
    }
}