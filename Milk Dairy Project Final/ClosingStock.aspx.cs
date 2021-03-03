using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Globalization;
using System.ComponentModel;
using System.Windows.Forms;

public partial class ClosingStock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtStockID.Focus();
       
      NewID();
    }
   private void NewID()
    {
        string myConnection2 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
        MySqlConnection conn2 = new MySqlConnection(myConnection2);
        conn2.Open();
        MySqlCommand cmd2 = new MySqlCommand("select max(trn)+1 as trn from closingstock", conn2);
        txtTRN.Text = cmd2.ExecuteScalar().ToString();
        conn2.Close();
    }

 
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
       
        try
        {
          
           DateTime dt = Convert.ToDateTime(txtSDate.Text);
            txtSDate.Text = String.Format("{0:yyyy-MM-dd}",dt);

            var random=new Random();

            int trn = random.Next(201, 10000);

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into closingstock(trn,stockID,stdSNF,stdFAT,stdRate,prsntStock,sDate,did) values('"
                + trn + "','"
                + txtStockID.Text + "','" + txtSnf.Text + "','" + txtFat.Text + "','" + txtRate.Text + "','" +
                txtprsntStock.Text + "','"+ txtSDate.Text + "','" + DropDownList1.Text + "');";

           

            MySqlConnection conn = new MySqlConnection(myConnection);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);

        
            MySqlDataReader myReader;

            myReader = cmd.ExecuteReader();

            Response.Write("<script> alert('Data Saved...')</script>");
            conn.Close();
            txtStockID.Text ="";
                txtSnf.Text ="";
                txtFat.Text = "";
                txtRate.Text = "";
                txtprsntStock.Text = "";
                txtSDate.Text = "";
                DropDownList1.Text = "";


            
        }
        catch (Exception ex)
        {
          //  Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
        }



    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
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
     
        txtSDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
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
               // txtRate.Text = myReader.GetValue(3).ToString();
                txtRate.Text = (myReader["cost"].ToString());
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops...Something went wrong!')</script>");
        }

    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {

        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo,MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

    }
    protected void txtRate_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {

        Response.Redirect("WelcomeAdmin.aspx");
    }
}