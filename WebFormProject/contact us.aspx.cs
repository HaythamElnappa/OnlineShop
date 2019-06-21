using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebFormProject
{
    public partial class contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable categories = Category.SelectAll();
                foreach (DataRow row in categories.Rows)
                {
                    catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                }
                DataTable fillfooter = Product.SelectLastfivepormotion();
                foreach (DataRow row in fillfooter.Rows)
                {
                    pormotionlist.InnerHtml += $"<li class=\"h6 text-left \"><a href=\"Proudect-Detailes.aspx?producetId_fordetails={row["P_Id"].ToString()}\">{row["Name"].ToString()}</a> </li>";

                }
                DataTable fillfooter2 = Product.SelectLastfiveProdeuct();
                foreach (DataRow row in fillfooter2.Rows)
                {
                    lastprouduect.InnerHtml += $"<li class=\"h6 text-left \"><a href=\"Proudect-Detailes.aspx?producetId_fordetails={row["P_Id"].ToString()}\">{row["Name"].ToString()}</a> </li>";

                }
            }


        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //for sarch in navigation
            Response.Redirect($"RESULT.aspx?searchof={txtsearch.Text}");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Message_Attripute message = new Message_Attripute { Body = txtsearch.Text, User_Id = int.Parse(Request.QueryString["id"].ToString()) };
            Message.Insert(message);
        }
    }
}