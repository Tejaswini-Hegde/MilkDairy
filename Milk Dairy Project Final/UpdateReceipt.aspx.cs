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

public partial class UpdateReceipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
    }
    protected void cmdFind_Click(object sender, EventArgs e)
    {
        try
        {
            string rTRN = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from receipt where rTRN=" + rTRN + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                    txtCID.Text = dr[1].ToString();
                    txtrDate.Text = dr[2].ToString();
                    txtrAmt.Text = dr[3].ToString();
                    txtBalAmt.Text = dr[4].ToString();
                    txtPaymentMode.Text = dr[5].ToString();
                  
                   

                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Oops..!Something went wrong...')</script>");
        }
        /*------------------------*/
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
                txtAmttbPaid.Text = (myReader["balAmt"].ToString());
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops..!Something went wrong...')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        update_balance();
        try
        {
            DateTime dt = Convert.ToDateTime(txtrDate.Text);
            txtrDate.Text = String.Format("{0:yyyy-MM-dd}", dt);

            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update receipt set rDate='" + txtrDate.Text + "',rAmt='" +
               txtrAmt.Text + "',balAmt='" + txtBalAmt.Text  +"',paymentMode='" + txtPaymentMode.Text  +"' where rTRN='" + txtSearch.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert('Data gets Updated...')</script>");
            conn.Close();
            txtSearch.Text ="";
            txtrDate.Text ="";
            txtrAmt.Text ="";
            txtPaymentMode.Text ="";
            txtBalAmt.Text ="";
            txtCID.Text = "";
            txtAmttbPaid.Text = "";

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Oops...!Something went wrong...')</script>");
        }
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



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtPaymentMode.Text = DropDownList1.SelectedValue;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtrDate.Text= Calendar1.SelectedDate.ToShortDateString();
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
    protected void txtrAmt_TextChanged(object sender, EventArgs e)
    {
        if (float.Parse(txtAmttbPaid.Text.ToString()) < float.Parse(txtrAmt.Text.ToString()))
        {
            txtBalAmt.Text = (float.Parse(txtAmttbPaid.Text.ToString()) + float.Parse(txtrAmt.Text.ToString())).ToString();
        }
        else
        {
            txtBalAmt.Text = (float.Parse(txtAmttbPaid.Text.ToString()) - float.Parse(txtrAmt.Text.ToString())).ToString();
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
    protected void cmdCancel_Click1(object sender, EventArgs e)
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