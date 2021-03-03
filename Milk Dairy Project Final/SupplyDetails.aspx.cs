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

public partial class SupplyDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSID.Focus();
        NewID();
        if (StockDropDown.Items.Count == 0)
        {
            StockDropDown.Items.Add("Select Stock ID...");
            try
            {
                string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                string query = "select stockID from closingstock;";
                MySqlConnection conn = new MySqlConnection(myConnection1);
                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataReader myReader = null;
                conn.Open();
                myReader = cmd.ExecuteReader();
                while (myReader.Read())
                {
                    StockDropDown.Items.Add(myReader[0].ToString());
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }      

    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        update_balance();


        try
        {
             DateTime dt = Convert.ToDateTime(txtSDate.Text);
           txtSDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";

          string insertQuery = "insert into supplydetails(SID,supplyDate,FAT,SNF,qty,Rate,totalAmt,stockID) values('" + txtSID.Text +"','" + txtSDate.Text + "','" + txtFat.Text + "','" + txtSNF.Text + 
              "','" + txtQty.Text + "','" + txtRate.Text + "','" +
                txtAmount.Text + "','" + txtStockID.Text +"');";

            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();

            /*---------------------------------------------------------------------------------------------------------------------------------*/

            string myConnection2 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";

            string insertQuery2 = "update closingstock set prsntStock=prsntStock+" + txtQty.Text + " where stockid=" + txtStockID.Text + ";";

            MySqlConnection conn2 = new MySqlConnection(myConnection2);
            conn2.Open();
            MySqlCommand cmd2 = new MySqlCommand(insertQuery2, conn2);
            MySqlDataReader myReader2;
            
            myReader2 = cmd2.ExecuteReader();
            
            Response.Write("<Script> alert('Entered sucessfully...')</script>");
            conn.Close();
            txtSID.Text = "";
            txtTRN.Text = "";
            txtSDate.Text = "";
            txtFat.Text = "";
            txtSNF.Text = "";
            txtQty.Text = "";
            txtRate.Text = "";
            txtAmount.Text = "";
            txtStockID.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert ('Please fill all the details properly ')</script>");
        }

        //update_balance();
    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update supplydetails set supplyDate='" + txtSDate.Text + "',FAT='" + txtFat.Text + "',snf='" + txtSNF.Text + "',qty='" + 
                txtQty.Text + "',Rate='" + txtRate.Text + "',totalAmt='" + txtAmount.Text + "',stockID='" + txtStockID.Text + "'where SID='" + txtSID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert('Data gets Updated...')</script>");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops!...Something went wrong')</script>");
        }
    }
   
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtSDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void txtRate_TextChanged(object sender, EventArgs e)
    {
        calc_total();
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
            MySqlDataReader myReader=null;
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
            Response.Write("<script>alert('Oops!...Something went wrong')</script>");
        }

    

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
    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        calc_total();
    }
    protected void txtSNF_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtStockID.Text = StockDropDown.Text;
    }
    protected void txtAmount_TextChanged(object sender, EventArgs e)
    {
        
    }
    void update_balance()
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string updateQuery = "update supplierinfo set balAmt=balAmt+ '" + txtAmount.Text + "'where SID='" + txtSID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;

            myReader = cmd.ExecuteReader();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops!...Something went wrong')</script>");
        }
    }
    private void NewID()
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select max(trn)+1 as trn from supplydetails", conn);
        txtTRN.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

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
}