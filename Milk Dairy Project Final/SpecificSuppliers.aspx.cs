using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SpecificSuppliers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       txtSID.Focus();

        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            Response.Write("<script> alert('Your Dairy Id is " + s + " ');</script>");

        }
        
    }
    protected void ImageButton2_Click2(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("WelcomeSupplier.aspx");
    }
}