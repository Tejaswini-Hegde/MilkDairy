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

public partial class ClosingStockUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
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
            MySqlCommand cmd = new MySqlCommand(query,conn);
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
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
        }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

    }
   
    protected void cmdFind_Click1(object sender, EventArgs e)
    {
        try
        {
            string stockID = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from closingstock where stockID=" + stockID + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                    txtSnf.Text = dr[2].ToString();
                    txtFat.Text = dr[3].ToString();
                    txtRate.Text = dr[4].ToString();
                    txtprsntStock.Text = dr[5].ToString();
                    txtSDate.Text = dr[6].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*        if (txtSearch.Text == "")
        {
            try
            {
                DateTime dt = Convert.ToDateTime(txtSDate.Text);
                txtSDate.Text = String.Format("{0:yyyy-MM-dd}", dt);
                string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
                string updateQuery = "update closingstock set stdsnf='" + txtSnf.Text + "',stdFAT='" +
                    txtFat.Text + "',stdRate='" + txtRate.Text + "',prsntStock='" + txtprsntStock.Text +
                    "',sDate='" + txtSDate.Text + "' where stockID='" + txtSearch.Text + "';";

                //Response.Write(updateQuery);

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
                Response.Write("<script>)('Please Fill all the fields...')</script>");
            }
        }*/
        try
        {

            DateTime dt = Convert.ToDateTime(txtSDate.Text);
            txtSDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update closingstock set stdsnf='" + txtSnf.Text + "',stdFAT='" +
                    txtFat.Text + "',stdRate='" + txtRate.Text + "',prsntStock='" + txtprsntStock.Text +
                    "',sDate='" + txtSDate.Text + "'where stockID='" + txtSearch.Text + "';";

            MySqlConnection con = new MySqlConnection(myConnection);

            MySqlCommand cmd = new MySqlCommand(updateQuery, con);
            MySqlDataReader myReader;
            con.Open();
            myReader = cmd.ExecuteReader();

            Response.Write("<Script> alert(' Data gets Updated...')</script>");
            txtFat.Text = "";
            txtprsntStock.Text = "";
            txtRate.Text = "";
            txtSDate.Text = "";
            txtSearch.Text = "";
            txtSnf.Text = "";
            
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops..!Something went wrong..')</script>");
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


