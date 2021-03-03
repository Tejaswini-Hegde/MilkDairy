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

public partial class UpdateSales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
    }
    protected void cmdFind_Click(object sender, EventArgs e)
    {
        try
        {
            string sTRN = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from salesdetails where sTRN=" + sTRN + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                   
                    txtsDate.Text = dr[2].ToString();
                    txtsQty.Text = dr[3].ToString();
                    txtStockID.Text = dr[4].ToString();
                    txtStockRate.Text = dr[5].ToString();
                    txtsTotal.Text = dr[6].ToString();
                    

                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write("<script> alert('Oops..!Something went wrong..')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            DateTime dt = Convert.ToDateTime(txtsDate.Text);
            txtsDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update salesdetails set sDate='" + txtsDate.Text + "',sQty='" + txtsQty.Text + "',stockID='" + 
                txtStockID.Text + "',sRate='" + txtStockRate.Text + "',sTotal='" + txtsTotal.Text + "'where sTRN='" + txtSearch.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert('Data gets Updated...')</script>");
            conn.Close();
            txtSearch.Text = "";
            txtsDate.Text ="";
            txtsQty.Text ="";
            txtStockID.Text = "";
            txtStockRate.Text ="";
            txtsTotal.Text ="";
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Oops..!Something went wrong..')</script>");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtsDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void txtStockID_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtStockID.Text = DropDownList1.SelectedValue;
        
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select RATE from supplydetails where stockID like'" + txtStockID.Text + "';";
            // Response.Write(query);
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                txtStockRate.Text = (myReader["RATE"].ToString());
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Oops..!Something went wrong..')</script>");
        }      
    }
    protected void txtStockRate_TextChanged(object sender, EventArgs e)
    {
        
       
    }
    protected void txtsTotal_TextChanged(object sender, EventArgs e)
    {
        calc_total();
    }
    void calc_total()
    {
        try
        {
            txtsTotal.Text = (float.Parse(txtsQty.Text.ToString()) * float.Parse(txtStockRate.Text.ToString())).ToString();
        }
        catch (Exception e)
        {

        }
    }
    protected void txtsQty_TextChanged(object sender, EventArgs e)
    {
        calc_total();
        
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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


    protected void cmdCancel_Click2(object sender, EventArgs e)
    {

        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void ImageButton2_Click2(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}