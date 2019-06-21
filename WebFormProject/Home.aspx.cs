using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace WebFormProject
{
    public partial class Home : System.Web.UI.Page
    {
        int tvid;
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
                // Make sure this code is in your page_load event.  Also give the button an ID

                DataTable data = Product.SelectBycategorylastproduct("mobile");
                foreach (DataRow row in data.Rows)
                {
                    {
                        //fill mobile section
                        var sb = new StringBuilder();
                        var htw = new HtmlTextWriter(new System.IO.StringWriter(sb, System.Globalization.CultureInfo.InvariantCulture));
                        Image img = new Image();
                        img.ImageUrl = row["Image_path"].ToString();
                        img.ID = row["name"].ToString();
                        img.Height = 200;
                        img.RenderControl(htw);
                        var htmlimg = sb.ToString();
                        cat1.InnerHtml += $"<div class=\"cards  \"><div class=\"card  align-content-center wow slideInLeft\" data-wow-duration=\"1s\" data-wow-delay=\"1s\">{htmlimg}<h2  class=\"text-nowrap lighttext\">{row["name"].ToString()}</h2><p class=\"text-nowrap text-white\">{row["Description"].ToString()}</p><a href=\"Proudect-Detailes.aspx?producetId_fordetails={row["P_Id"].ToString()}\" class=\"btn btn-secondary btn-success\">DETALES</a></div>";



                    }
                }
                //fill all categories in list in navigation
                DataTable categories = Category.SelectAll();
                foreach (DataRow row in categories.Rows)
                {
                    catdropdownlist.InnerHtml += $"<a class=\"dropdown-item  text-white\" href=\"displayitems.aspx?cat={row["Cat_Id"].ToString()}\">{row["Name"].ToString()}</a>";
                }


            }
            //get image of tv ategory and the description
            DataTable data2 = Product.SelectBycategoryOneLastproduct("tv");
            imgtv.ImageUrl = data2.Rows[0]["Image_path"].ToString();
            ltv.InnerHtml += $"<p>{data2.Rows[0]["Description"].ToString()}</p>";
            tvid = int.Parse(data2.Rows[0]["P_Id"].ToString());

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //for sarch in navigation
            Response.Redirect($"RESULT.aspx?searchof={txtsearch.Text}");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            int buttonId = int.Parse(button.ID.ToString());
            Response.Redirect($"Proudect-Detailes.aspx?producetId_fordetails={buttonId}");

        }

        protected void Btntv_Click(object sender, EventArgs e)
        {
            // show crunnet tv product
            Response.Redirect($"Proudect-Detailes.aspx?producetId_fordetails={tvid}");
        }

        protected void btncar_Click(object sender, EventArgs e)
        {
            // show crunnet car product
            DataTable data2 = Product.SelectBycategoryOneLastproduct("car");
            var id = data2.Rows[0]["P_Id"].ToString();
            Response.Redirect($"Proudect-Detailes.aspx?producetId_fordetails={id}");
        }
    }
}