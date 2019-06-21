using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class RESULT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
                DataTable categories = Category.SelectAll();
                foreach (DataRow row in categories.Rows)
                {
                    catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                }

                DataTable items = Product.SelectByName(Request.QueryString["searchof"]);
                foreach (DataRow row in items.Rows)
                {
                    var sb = new StringBuilder();
                    var htw = new HtmlTextWriter(new System.IO.StringWriter(sb, System.Globalization.CultureInfo.InvariantCulture));
                    Image img = new Image();
                    img.ImageUrl = row["Image_path"].ToString();
                    img.ID = row["name"].ToString();
                    img.CssClass = "card-img-top";
                    img.Height = 300;

                    img.RenderControl(htw);
                    var htmlimg = sb.ToString();
                    mycontainer.InnerHtml += $"<div><div class=\"card\" style=\"width:18rem; \">{htmlimg}<div class=\"card-body\"><h3 class=\"card-title \">{row["name"].ToString()}</h3><a href = \"displayitems.aspx?cat={row["Cat_Id"].ToString()}\" class=\"btn btn-primary \">GO TO DETAILS</a></div></div></div>";
                }
            }

        }



        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect($"RESULT.aspx?searchof={txtsearch.Text}");
        }
    }
}