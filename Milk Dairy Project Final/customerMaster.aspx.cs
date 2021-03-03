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
public partial class customerMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            Response.Write("<script> alert('Your Dairy Id is " + s + " ');</script>");
           DropDownList1.Text= Session["DairyId"].ToString();
        }
        txtCID.Focus();
    }

  
    
   
  
    protected void cmdCancel_Click(object sender, EventArgs e)
    {

        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdin.aspx");
    }
    protected void cmdCancel_Click1(object sender, EventArgs e)
    {

        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        txtCID.Text = "";
        txtBank.Text = "";
        txtBal.Text = "";
        txtIfsc.Text = "";
        txtAddress.Text = "";
        txtName.Text = "";
        txtPhone.Text = "";
        txtAadhar.Text = "";
        Response.Redirect("WelcomeAdmin.aspx");

    }

   
    protected void cmdSave_Click1(object sender, EventArgs e)
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into customermaster(CID,fullname,cAadhar,address,phoneno,bankacc,ifsc,did,balAmt) values('" + txtCID.Text + "','" + txtName.Text + "','" +
                txtAadhar.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" +
                txtBank.Text + "','" + txtIfsc.Text + "','" + DropDownList1.Text + "','" + txtBal.Text + "');";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<Script> alert('Data Saved...')</script>");
            conn.Close();
            txtBal.Text = "";
             txtCID.Text="";
             txtName.Text="";
             txtAadhar.Text="";
             txtAddress.Text="";
             txtPhone.Text="";
            txtBank.Text="";
            txtIfsc.Text="";
             DropDownList1.Text="";
            


        }
        catch (Exception ex)
        {
          //  Response.Write("<Script> alert('Oops!...Something weint wrong')</script>");
        }
    }
    protected void cmdBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

    }
}