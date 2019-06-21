﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class TrackOrderView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lat.Text = Driver.GetLocation(1).Rows[0]["latitude"].ToString();
            lang.Text = Driver.GetLocation(1).Rows[0]["longitude"].ToString();
        }
    }
}