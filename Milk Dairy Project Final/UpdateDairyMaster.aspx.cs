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

public partial class UpdateDairyMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            //Response.Write("<script> alert('Your Dairy Id is " + s + "');</script>");
            txtSearch.Text = Session["DairyId"].ToString();
        }
       
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
            {
                string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
                string updateQuery = "update dairydetails set dairyname='"
                    + txtDname.Text + "',address='" + txtAddress.Text + "',mphone='" + txtPnumber.Text + "',head='" +
                    txtAdmin.Text + "'where did='" + txtSearch.Text + "';";
                MySqlConnection conn = new MySqlConnection(myConnection);
                MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
                MySqlDataReader myReader;
                conn.Open();
                myReader = cmd.ExecuteReader();
                Response.Write("<script>alert('Data gets Updated...')</script>");
                conn.Close();
             txtDname.Text="";
             txtAddress.Text="";
            txtPnumber.Text="";
             txtAdmin.Text="";
             txtSearch.Text = "";
            }
            catch (Exception ex)
            {
               // Response.Write(ex.ToString());
                Response.Write("<script> alert('Oops..!Something Went Wrong..')</script>"); 
            }
       // }
    }
    protected void cmdFind_Click(object sender, EventArgs e)
    {
        try
        {
            string did = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from dairydetails where did=" + did + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                    txtDname.Text = dr[1].ToString();
                    txtAddress.Text = dr[2].ToString();
                    txtPnumber.Text = dr[3].ToString();
                    txtAdmin.Text = dr[4].ToString();

                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            //Response.Write(exp.ToString());
            Response.Write("<script> alert('Oops..!Something Went Wrong..')</script>");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

 
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void cmdFind_Click1(object sender, EventArgs e)
    {
        try
        {
            string did = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from dairydetails where did=" + did + ";", con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {
                    txtDname.Text = dr[1].ToString();
                    txtAddress.Text = dr[2].ToString();
                    txtPnumber.Text = dr[3].ToString();
                    txtAdmin.Text = dr[4].ToString();

                }
            }
            else
                Response.Write("<Script> alert('Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write("<script> alert('Oops..!Something Went Wrong..')</script>");
        }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
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
    protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}