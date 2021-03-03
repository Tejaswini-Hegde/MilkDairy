using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class ViewAllCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select count(CID) as CID from customermaster", conn);
        lblTotal.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

     

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    
}