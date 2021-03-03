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


public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        NewID();
        txtSID.Focus();
    }
    /*------------------------------------Auto incrementvalue into text box-----------------------------*/
    private void NewID()
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select max(pTRN)+1 as pTRN from paymentdetails", conn);
        txtpTRN.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime dt = Convert.ToDateTime(txtpDate.Text);
              txtpDate.Text = String.Format("{0:yyyy-MM-dd}", dt);
              update_balance();

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into paymentdetails(SID,pDate,paymentMode,amtPaid,balance) values('" + txtSID.Text +"','"+
                txtpDate.Text + "','" + DropDownList1.Text + "','" + txtAmt.Text + "','" + txtBalance.Text +"');";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<Script> alert('Data Saved...')</script>");
            conn.Close();
            txtSID.Text="";
            txtpDate.Text="";
            DropDownList1.Text="";
            txtAmt.Text="";
            txtBalance.Text = "";
            txtAmttbPaid.Text = "";
           
                
                
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops!...Something went wrong')</script>");
        }


    }
    protected void txtBalance_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtpDate.Text = Calendar1.SelectedDate.ToShortDateString();
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
   /* protected void txtsAadhar_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select balAmt from supplierinfo where SID='" + txtSID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            if (myReader.Read())
            {
                txtAmttbPaid.Text = (myReader["balAmt"].ToString());
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops!...Something went wrong')</script>");
        }
    }*/
    protected void txtAmt_TextChanged(object sender, EventArgs e)
    {
       txtBalance.Text = (float.Parse(txtAmttbPaid.Text.ToString())-float.Parse(txtAmt.Text.ToString())).ToString();
    }
    protected void txtAmttbPaid_TextChanged(object sender, EventArgs e)
    {

    }
    void update_balance()
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string updateQuery = "update supplierinfo set balAmt='" + txtBalance.Text +"'where SID='"+ txtSID.Text +"';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(updateQuery,conn);
            MySqlDataReader myReader;
            
            myReader = cmd.ExecuteReader();
           
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
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }

    protected void txtSID_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select balAmt from supplierinfo where SID='" + txtSID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query,conn);
            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            if (myReader.Read())
            {
                txtAmttbPaid.Text = (myReader["balAmt"].ToString());
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops!...Something went wrong')</script>");
        }
    }
}