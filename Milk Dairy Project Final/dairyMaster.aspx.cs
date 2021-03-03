using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.ComponentModel;



public partial class dairyMaster : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            Response.Write("<script> alert(" + s + ");</script>");
            Response.Write("<script> alert('Your Dairy Id is '," + s + " );</script>");
        }
        txtDname.Focus();
        NewID();
    }
    private void NewID()
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select max(did)+1 as did from dairydetails", conn);
        txtDid.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        
      
    }
    protected void cmdinsert_Click(object sender, EventArgs e)
    {

        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into dairydetails(dairyname,address,mphone,head) values('" + txtDname.Text + "','" + txtAddress.Text + "','" + txtPnumber.Text + "','" + txtAdmin.Text + "');";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<Script> alert('Data Saved...')</script>");
            txtDid.Text = "";
            txtDname.Text = "";
            txtAddress.Text = "";
            txtPnumber.Text = "";
            txtAdmin.Text = "";
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        txtDname.Text = "";
        txtAddress.Text = "";
        txtDid.Text = "";
        txtPnumber.Text = "";
        txtAdmin.Text = "";
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");   
    }
}