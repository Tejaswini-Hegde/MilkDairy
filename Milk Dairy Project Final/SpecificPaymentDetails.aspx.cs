﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SpecificPaymentDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            Response.Write("<script> alert('Your Dairy Id is " + s + " ');</script>");

        }
        txtpTRN.Focus();
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeSupplier.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeSupplier.aspx");
    }
}