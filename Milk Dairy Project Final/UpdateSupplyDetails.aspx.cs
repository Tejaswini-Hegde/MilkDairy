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


public partial class UpdateSupplyDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime dt = Convert.ToDateTime(txtSDate.Text);
            txtSDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update supplydetails set supplyDate='" +
                txtSDate.Text + "',FAT='" + txtFat.Text + "',snf='" + txtSNF.Text + "',qty='" + txtQty.Text + "',Rate='" +
                txtRate.Text + "',totalAmt='" + txtAmount.Text + "',stockID='" + txtStockID.Text + "' where trn='"+ txtSearch.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert('Data gets Updated...')</script>");
            conn.Close();

            txtSearch.Text = "";
            txtSDate.Text ="";
            txtFat.Text ="";
            txtSNF.Text = "";
            txtQty.Text ="";
            txtRate.Text ="";
            txtAmount.Text ="";
            txtStockID.Text ="";
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
        }
    }
    protected void cmdFind_Click(object sender, EventArgs e)
    {
        try
        {
            string sTRN = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from supplydetails where trn=" + sTRN + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {


                    txtSDate.Text = dr[2].ToString();
                    txtFat.Text = dr[3].ToString();
                    txtSNF.Text = dr[4].ToString();
                    txtQty.Text = dr[5].ToString();
                    txtRate.Text = dr[6].ToString();
                    txtAmount.Text = dr[7].ToString();
                    txtStockID.Text = dr[8].ToString();
                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtSDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
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
    protected void txtFat_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select cost from fatandcost where fat like'" + txtFat.Text + "';";
            // Response.Write(query);
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            // cmd.Parameters.AddWithValue("@fat", float.Parse(txtFat.Text));
            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                txtRate.Text = (myReader["cost"].ToString());
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
        }

        calc_total();
    }
    protected void txtRate_TextChanged(object sender, EventArgs e)
    {
        calc_total();
    }
    void calc_total()
    {
        try
        {
            txtAmount.Text = (float.Parse(txtQty.Text.ToString()) * float.Parse(txtRate.Text.ToString())).ToString();
        }
        catch (Exception e)
        {

        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtStockID.Text = DropDownList1.SelectedValue;
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    
    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        calc_total();
    }

    protected void cmdCancel_Click2(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}


