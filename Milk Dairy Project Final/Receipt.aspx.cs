using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.ComponentModel;
using System.Windows.Forms;

public partial class Receipt : System.Web.UI.Page
{
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCID.Focus();
        NewID();
    }
    /*__________________Generate auto increment value into textbox__________________*/

    private void NewID()
    {
        string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn = new MySqlConnection(myConnection);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select max(rTRN)+1 as rTRN from receipt", conn);
        txtrTRN.Text = cmd.ExecuteScalar().ToString();
        conn.Close();

    }
        protected void cmdInsert_Click(object sender, EventArgs e)
    {
        update_balance();
        try
        {
            DateTime dt = Convert.ToDateTime(txtrDate.Text);
            txtrDate.Text = String.Format("{0:yyyy-MM-dd}", dt);
            update_balance();

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into receipt(CID,rDate,rAmt,paymentMode,balAmt) values('" +
                txtCID.Text + "','" + txtrDate.Text + "','" + txtrAmt.Text + "','" + DropDownList1.Text + "','" + txtBalAmt.Text + "');";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<Script> alert('Data saved...')</script>");
            conn.Close();
             txtCID.Text="";
            txtrDate.Text="";
             txtbalanceAmt.Text="";
            DropDownList1.Text="";
            txtBalAmt.Text = "";
            txtrAmt.Text = "";
            

        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Please enter right information..')</script>");
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
     txtrDate.Text = Calendar1.SelectedDate.ToShortDateString();
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
    protected void txtcAadhar_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string query = "select balAmt from customermaster where CID='" + txtCID.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection1);
            MySqlCommand cmd = new MySqlCommand(query, conn);

            MySqlDataReader myReader = null;
            conn.Open();
            myReader = cmd.ExecuteReader();
            if (myReader.Read())
            {
                txtbalanceAmt.Text = (myReader["balAmt"].ToString());
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops! Something went wrong...')</script>");
        }

    }
    protected void txtBalAmt_TextChanged(object sender, EventArgs e)
    {
       // txtBalAmt.Text = (float.Parse(txtbalanceAmt.Text.ToString()) - float.Parse(txtrAmt.Text.ToString())).ToString();
        
    }
    protected void txtrAmt_TextChanged(object sender, EventArgs e)
    {
        txtBalAmt.Text = (float.Parse(txtbalanceAmt.Text.ToString()) - float.Parse(txtrAmt.Text.ToString())).ToString();
    }
    void update_balance()
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string updateQuery = "update customermaster set balAmt='" + txtBalAmt.Text + "'where CID='" + txtCID.Text + "';";
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
    protected void txtrTRN_TextChanged(object sender, EventArgs e)
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
    protected void cmdCancel_Click1(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void cmdBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

    }
    protected void cmdCancel_Click2(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
}