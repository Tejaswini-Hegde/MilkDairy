using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewSpecifiPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtpTRN.Focus();
    }
    
    protected void ImageButton2_Click2(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("WelcomeAdmin.aspx");
    }
}