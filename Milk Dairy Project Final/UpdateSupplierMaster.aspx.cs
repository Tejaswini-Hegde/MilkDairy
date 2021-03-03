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


public partial class UpdateSupplierMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
    }
    protected void cmdFind_Click(object sender, EventArgs e)
    {
        
        try
        {
            string SID = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from supplierinfo where SID=" + SID + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                    txtName.Text = dr[1].ToString();
                    txtAddress.Text = dr[3].ToString();
                    txtPhone.Text = dr[4].ToString();
                    txtBank.Text = dr[5].ToString();
                    txtIfsc.Text = dr[6].ToString();
                    
                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write("<script> alert('Oops!...Something went wrong')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            try
            {
                string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
                string updateQuery = "update supplierinfo set fullname='" + txtName.Text + "',address='" + txtAddress.Text + "',phoneno='" +
                txtPhone.Text + "',bankacc='" + txtBank.Text + "',ifsc='" + txtIfsc.Text + "' where SID='" + txtSearch.Text + "';";
                MySqlConnection conn = new MySqlConnection(myConnection);
                MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
                MySqlDataReader myReader;
                conn.Open();
                myReader = cmd.ExecuteReader();
                Response.Write("<script>alert('Data gets Updated...')</script>");
                conn.Close();
                txtSearch.Text = "";
                txtName.Text = "";
                txtAddress.Text ="";
                txtPhone.Text ="";
                txtBank.Text ="";
                txtIfsc.Text ="";
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Oops!...Something went wrong')</script>");

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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void cmdCancel_Click1(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton2_Click2(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}