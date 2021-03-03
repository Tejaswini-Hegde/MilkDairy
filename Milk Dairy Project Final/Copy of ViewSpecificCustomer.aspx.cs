using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewSpecificCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAadhar.Focus();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("WelcomeAdmin.aspx");
        

    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}