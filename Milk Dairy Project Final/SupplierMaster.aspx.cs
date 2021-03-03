using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.ComponentModel;
using System.Windows.Forms;

public partial class SupplierMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSID.Focus();
    }
    protected void cmdSave_Click(object sender, EventArgs e)
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into supplierinfo(SID,fullname,sAadhar,address,phoneno,bankacc,ifsc,did,balAmt) values('" + txtSID.Text +"','" + txtName.Text + "','" +
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
            txtSID.Text="";
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
           // Response.Write(ex.ToString());
            //Response.Write("<Script> alert('Oops!...Something went wrong')</script>");
        }

    }
    protected void cmdEdit_Click(object sender, EventArgs e)
    {
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {

        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {

        Response.Redirect("WelcomeAdmin.aspx");
    }
}