using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class ShowUserNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable data = Users.SelectByAccipt(true);
                GridView1.DataSource = data;
                GridView1.DataBind();

                GridView2.DataSource = Users.SelectByAccipt(false);
                GridView2.DataBind();

                GridView3.DataSource = Admins.Select();
                GridView3.DataBind();

                GvwMakeAdmin.DataSource = Users.SelectByAccipt(true);
                GvwMakeAdmin.DataBind();

                HttpCookie cookie = Request.Cookies["MyCookie"];
                if (cookie != null)
                {
                    int x = int.Parse(cookie["userId"].ToString());
                    DataTable d = LoginAdmin.SelectById(x);
                    if (d.Rows.Count > 0)
                    {
                        ShowAdmin.Visible = true;
                    }


                    else
                        ShowAdmin.Visible = false;
                }

                else
                    Response.Redirect("LogIn.aspx");
            }
            
        }

        protected void DropDownList1_Init(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }




        protected void FunMakeAdmin(object sender, GridViewEditEventArgs e)
        {
            int x = e.NewEditIndex;
            bool check = false;
            DataTable table = Users.SelectByAccipt(true);
            DataTable tableAdmin = Admins.SelectAllAdmin();

            for (int i = 0; i < tableAdmin.Rows.Count; i++)
                if (table.Rows[x]["User_Id"].ToString() == tableAdmin.Rows[i]["User_Id"].ToString())
                    check = true;

            if (check == false)
            {
                
                Admins.Insert(int.Parse(table.Rows[x]["User_Id"].ToString()));
                GvwMakeAdmin.DataSource = Users.SelectByAccipt(true);
                GvwMakeAdmin.DataBind();
            }

            GridView3.DataSource = Admins.Select();
            GridView3.DataBind();
        }

        protected void FunMakeAdmin(object sender, GridViewDeleteEventArgs e)
        {
            int x = e.RowIndex;
            bool check = false;
            DataTable table = Users.SelectByAccipt(true);
            DataTable tableAdmin = Admins.SelectAllAdmin();

            for (int i = 0; i < tableAdmin.Rows.Count; i++)
                if (table.Rows[x]["User_Id"].ToString() == tableAdmin.Rows[i]["User_Id"].ToString())
                    check = true;

            if (check == false)
            {
               
                Admins.Insert(int.Parse(table.Rows[x]["User_Id"].ToString()));
                GvwMakeAdmin.DataSource = Users.SelectByAccipt(true);
                GvwMakeAdmin.DataBind();
                GridView3.DataSource = Admins.Select();
                GridView3.DataBind();
            }

            
        }

        protected void BlockUser(object sender, GridViewDeleteEventArgs e)
        {
            int x = e.RowIndex;
            DataTable table = Users.SelectByAccipt(true);
            if (table.Rows.Count != 0)
            {
                string s = table.Rows[x]["User_Id"].ToString();
                Users.UpdateState(false, int.Parse(s));
                Admins.Delete(int.Parse(table.Rows[x]["User_Id"].ToString()));
            }
            GridView1.DataSource = Users.SelectByAccipt(true);
            GridView1.DataBind();

            GridView2.DataSource = Users.SelectByAccipt(false);
            GridView2.DataBind();

            GridView3.DataSource = Admins.Select();
            GridView3.DataBind();

            Response.Redirect("ShowUserNew.aspx");
        }

        protected void AcceptedUser(object sender, GridViewDeleteEventArgs e)
        {
            int x = e.RowIndex;

            DataTable table = Users.SelectByAccipt(false);
            if (table.Rows.Count != 0)
            {

                string s = table.Rows[x]["User_Id"].ToString();
                Users.UpdateState(true, int.Parse(s));
            }
            GridView2.DataSource = Users.SelectByAccipt(false);
            GridView2.DataBind();

            DataTable data = Users.SelectByAccipt(true);
            GridView1.DataSource = data;
            GridView1.DataBind();

            Response.Redirect("ShowUserNew.aspx");
        }

        protected void DeleteAdmin(object sender, GridViewDeleteEventArgs e)
        {
            int x = e.RowIndex;
            DataTable data = Admins.Select();
            int check = Admins.Delete(int.Parse(data.Rows[x]["User_Id"].ToString()));
            if (check == 1)
            {
                GridView3.DataSource = Admins.Select();
                GridView3.DataBind();
            }

            Response.Redirect("ShowUserNew.aspx");
        }
    }
}