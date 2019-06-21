using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class EditProfileForUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Project"];
            User_Attripute user = new User_Attripute { User_Id = int.Parse(cookie["id"].ToString()), Address = txtAddress.Text, Email = txtEmail.Text, Name = txtName.Text, Password = txtPass.Text, State = true };
            Users.Update(user, user.User_Id);
        }
    }
}