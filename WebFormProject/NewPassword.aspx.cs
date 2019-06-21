using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class NewPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string req = Request.QueryString["email"];
            DataTable data = Users.SelectByEmail(req);
            User_Attripute user = new User_Attripute
            {
                Address = data.Rows[0]["Address"].ToString(),
                Email = req,
                Name = data.Rows[0]["Name"].ToString(),
                Password = txtNewPassword.Text,
                State = bool.Parse(data.Rows[0]["State"].ToString()),
                User_Id = int.Parse(data.Rows[0]["User_Id"].ToString())
            };

            Users.Update(user, user.User_Id);

            Response.Redirect("LogIn.aspx");
        }
    }
}