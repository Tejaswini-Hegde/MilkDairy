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

public partial class UpdateFatandCost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string myConnection = "Server=localhost;Database=Milkdairy;Uid=root;Pwd=nimda";
            string updateQuery = "update fatandcost set cattle='" + txtCattle.Text + "',cost='" + txtCost.Text + "' where fat like '" + txtSearch.Text + "';";
            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<script>alert('Data gets Updated...')</script>");
            conn.Close();
             txtCattle.Text="";
            txtCost.Text="";
            txtSearch.Text = ""; 
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
            string fat = txtSearch.Text;
            MySqlConnection con = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda");
            con.Open();
            string sql = "Select * from fatandcost where fat like " + fat + ";";
             //   Response.Write(sql);
            MySqlCommand cmd = new MySqlCommand(sql,con);
            MySqlDataReader dr = cmd.ExecuteReader();
            Boolean b = dr.HasRows;
            if (b)
            {
                while (dr.Read())
                {                 
                    txtCattle.Text = dr[1].ToString();
                    txtCost.Text = dr[3].ToString();                
                }
            }
            else
                Response.Write("<Script> alert('Data Not Found...')</script>");
        }
        catch (Exception exp)
        {
            Response.Write(exp.ToString());
        }
    }
    protected void txtCost_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtCattle.Text = DropDownList1.SelectedValue;
    }
    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        var result = MessageBox.Show("Do you want to Cancel?", "Cancelling.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            Response.Redirect("WelcomeAdmin.aspx");

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}