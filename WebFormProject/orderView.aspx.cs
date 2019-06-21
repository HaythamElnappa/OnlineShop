using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class orderView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //GridView1.DataSource = Order.SelectAll();
                //GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Response.Redirect("orderView.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = GridView1.Rows[e.RowIndex];
            int x = Order.Delete(int.Parse(row.Cells[1].Text));
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.NewEditIndex];
            int x = int.Parse(row.Cells[1].Text);
            //Order o = Order.SelectById(x);
            Order.Update(x, 2);
            Response.Redirect("orderView.aspx");
        }
    }
}