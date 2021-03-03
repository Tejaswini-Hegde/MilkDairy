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

public partial class SalesDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCID.Focus();
        NewID();

        if (StockDropDown.Items.Count == 0)
        {
            StockDropDown.Items.Add("Select Stock ID...");
            try
            {
                string myConnection1="Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                string query = "select stockID from closingstock;";
                MySqlConnection conn = new MySqlConnection(myConnection1);
                MySqlCommand cmd = new MySqlCommand(query,conn);
                MySqlDataReader myReader = null;
                conn.Open();
                myReader = cmd.ExecuteReader();
                while (myReader.Read())
                {
                    StockDropDown.Items.Add(myReader[0].ToString());
                }
                conn.Close();
            }
            catch(Exception ex)
            {
               // Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
            }

            }      

    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        update_balance();


        try
        {
            DateTime dt = Convert.ToDateTime(txtsDate.Text);
            txtsDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into salesdetails(CID,sDate,sQty,stockID,sRate,sTotal,did) values('"+ txtCID.Text+"','" + txtsDate.Text + "','" + txtsQty.Text + "','" + txtStockID.Text + "','" + txtStockRate.Text + "','" +
                txtsTotal.Text + "','" + DropDownList1.Text + "');";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            /*---------------------------------------------------------------------*/
            string myConnection2 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery2 = "update closingstock set prsntStock=prsntStock-" + txtsQty.Text + " where stockID=" + txtStockID.Text + ";";
            MySqlConnection conn2 = new MySqlConnection(myConnection2);
            conn2.Open();
            MySqlCommand cmd2 = new MySqlCommand(insertQuery2, conn2);
            MySqlDataReader myReader2;
            myReader2 = cmd2.ExecuteReader();

            Response.Write("<Script> alert('Data Saved...')</script>");
            conn.Close();
            txtCID.Text="";
            txtsDate.Text="";
            txtsQty.Text="";
            txtStockID.Text="";
            txtStockRate.Text="";
            txtsTotal.Text="";
            DropDownList1.Text = "";
        }
        catch (Exception ex)
        {
           // Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
        }

        //update_balance();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update salesdetails set sTRN='" + txtTRN.Text + "',CID='"+ txtCID.Text +"',sDate='" +
                txtsDate.Text + "',sQty='" + txtsQty.Text + "',stockID='" + txtStockID.Text + "',sRate='" + txtStockRate.Text
                + "',sTotal='" + txtsTotal.Text + "',did='" + DropDownList1.Text + "'where sTRN='" + txtTRN.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert(' Data gets Updated...')</script>");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
        }
    }
    protected void cmdDelete_Click(object sender, EventArgs e)
    {

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
    protected void txtcAadhar_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsQty_TextChanged(object sender, EventArgs e)
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
    protected void txtStockRate_TextChanged(object sender, EventArgs e)
    {

        calc_total();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtStockID.Text = StockDropDown.SelectedValue;
    }
    protected void DropDownList2_SelectedIndexChanged2(object sender, EventArgs e)
    {
        txtStockID.Text = StockDropDown.Text;
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select stdRate from closingstock where stockID like'" + txtStockID.Text + "';";
            // Response.Write(query);
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query,conn);
            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            if (myReader.Read())
            {
                txtStockRate.Text = (int.Parse(myReader[0].ToString()) + 2).ToString();
            }
            else

                txtStockRate.Text = "0";
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
        }      

       
    }
    protected void txtStockID_TextChanged(object sender, EventArgs e)
    {
        
    }
    void update_balance()
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string updateQuery = "update customermaster set balAmt='" + txtsTotal.Text + "'where CID='" + txtCID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;

            myReader = cmd.ExecuteReader();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
        }
    }
    

    /*----------------------Auto increment value into text-------------*/
    private void NewID()
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select max(sTRN)+1 as sTRN from salesdetails", conn);
        txtTRN.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

    }
   
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
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
    protected void cmdCancel_Click1(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
}
