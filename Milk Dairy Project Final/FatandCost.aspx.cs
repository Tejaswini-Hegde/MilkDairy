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


public partial class FatandCost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFat.Focus();
    
    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        try
        {
            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
            string insertQuery = "insert into fatandcost(cattle,fat,cost,snf) values('" + DropDownList1.Text + "','" + txtFat.Text + "','"
                + txtCost.Text + "','" + txtSnf.Text + "');";

            MySqlConnection conn = new MySqlConnection(myConnection);
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader myReader;
            conn.Open();
            myReader = cmd.ExecuteReader();
            Response.Write("<Script> alert('Data gets Saved...')</script>");
            conn.Close();
            DropDownList1.Text="";
            txtFat.Text="";
             txtCost.Text="";
             txtSnf.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("<Script> alert('Oops..!Something went wrong..')</script>");
        }

    }
    protected void cmdUdate_Click(object sender, EventArgs e)
    {
        
    }
    protected void txtCost_TextChanged(object sender, EventArgs e)
    {
        
    }
    void cal_cost()
    {
        try
        {
            double fat = double.Parse(txtFat.Text);
            double snf = double.Parse(txtSnf.Text);
            if (DropDownList1.Text == "Buffallo")
            {
                if (fat == 6 && snf == 9)
                {
                    txtCost.Text = "30";
                }

                else if (fat <= 6.5 && snf <= 9.5)
                {
                    txtCost.Text = "30.5";
                }
                else if (fat <= 7 && snf <= 10)
                {
                    txtCost.Text = "31";
                }
                else if (fat <= 7.5 && snf <= 10.5)
                {
                    txtCost.Text = "31.5";
                }
                else if (fat <= 8 && snf <= 11)
                {
                    txtCost.Text = "32";
                }
                else if (fat <= 8.5 && snf <= 11.5)
                {
                    txtCost.Text = "32.5";
                }
                else if (fat <= 9 && snf <= 12)
                {
                    txtCost.Text = "33";
                }
                else if (fat <= 9.5 && snf <= 12.5)
                {
                    txtCost.Text = "33.5";
                }
                else if (fat <= 10 && snf <= 13)
                {
                    txtCost.Text = "34";
                }
            }
            else if(DropDownList1.Text=="Cow")
            {
                if (fat == 4 && snf == 6)
                {
                    txtCost.Text = "28";
                }

                else if (fat <= 4.5 && snf <= 6.5)
                {
                    txtCost.Text = "28.5";
                }
                else if (fat <= 5 && snf <= 7)
                {
                    txtCost.Text = "29";
                }
                else if (fat <= 5.5 && snf <= 7.5)
                {
                    txtCost.Text = "29.5";
                }
                else if (fat <= 6 && snf <= 8)
                {
                    txtCost.Text = "30";
                }
                else if (fat <= 6.5 && snf <= 8.5)
                {
                    txtCost.Text = "30.5";
                }
                else if (fat <= 7 && snf <= 9)
                {
                    txtCost.Text = "31";
                }
                else if (fat <= 7.5 && snf <= 9.5)
                {
                    txtCost.Text = "31.5";
                }
                else if (fat <= 8 && snf <= 10)
                {
                    txtCost.Text = "32";
                }

            }
        }
    catch(Exception ex)
        {

         }
    }
    protected void txtSnf_TextChanged(object sender, EventArgs e)
    {
        cal_cost();
    }
    protected void txtFat_TextChanged(object sender, EventArgs e)
    {
        cal_cost();
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
    protected void txtSnf_TextChanged1(object sender, EventArgs e)
    {
        cal_cost();
    }
}




