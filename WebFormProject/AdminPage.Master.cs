﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mymes.InnerText = Message.CountUnReadMessages();



        }

        protected void redirctToMessage(object sender, EventArgs e)
        {
            Response.Redirect("MessageView.aspx");
        }
    }
}