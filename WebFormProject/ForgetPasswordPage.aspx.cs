using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATMProject.Services;
using System.Data;

namespace WebFormProject
{
    public partial class ForgetPasswordPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEmail_Click(object sender, EventArgs e)
        {
            DataTable data = Users.SelectByEmail(txtEmail.Text);
            if (data.Rows.Count != 0)
            {
                Random num = new Random();
                double n = num.NextDouble();
                int numNew = (int)(n * 10000);
                ViewState.Add("num", numNew);
                SendEmailConfirmation send = new SendEmailConfirmation(txtEmail.Text, "mohamed saleh", "saleh", numNew.ToString());
                send.sendEmail();

                lblMail.Visible = false;
                btnEmail.Visible = false;
                txtEmail.Visible = false;
                lblError.Visible = false;
                lblConfirm.Visible = true;
                btnConfirm.Visible = true;
                txtConfirm.Visible = true;
            }

            else
            {
                lblError.Text = "this email is not found";
                lblError.Visible = true;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int numNew = int.Parse(ViewState["num"].ToString());
            if (numNew == int.Parse(txtConfirm.Text))
            {
                Response.Redirect($"NewPassword.aspx?email={txtEmail.Text}");
            }

            else
            {
                lblError.Visible = true;
                lblError.Text = "The code is error";
            }
        }
    }
}