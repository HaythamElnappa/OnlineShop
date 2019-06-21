using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class MessageView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillGridNewMessages();
            fillGridAllMessages();
            Message.Update();

        }

        private void fillGridNewMessages()
        {
            gridNewMessages.DataSource = Message.SelectNewMessages();
            gridNewMessages.DataBind();
        }

        private void fillGridAllMessages()
        {
            gridAllMessages.DataSource = Message.SelectAll();
            gridAllMessages.DataBind();
        }

        protected void gridNewMessages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0) { 
                GridViewRow row = gridNewMessages.Rows[e.RowIndex];
                Message.Delete(int.Parse(row.Cells[1].Text));
                Response.Redirect("MessageView.aspx");
            }
        }

        protected void gridAllMessages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gridAllMessages.Rows[e.RowIndex];
            Message.Delete(int.Parse(row.Cells[1].Text));
            fillGridAllMessages();
        }

        
    }
}