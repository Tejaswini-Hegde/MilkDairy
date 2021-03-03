using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.ComponentModel;

public partial class DeleteClosingStock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtStockID.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       /* var result = MessageBox.Show("Do you want to Delete?", "Deleting.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            try
            {
                string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                string queryd = "delete from closingstock where stockID='" + txtStockID.Text + "';";
                // Response.Write(queryd);

                MySqlConnection conn = new MySqlConnection(myConnection);
                conn.Open();

                MySqlCommand myCmd = new MySqlCommand(queryd,conn);

                if (myCmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Closing Stock Details Deleted..')</script)");
                   
                }
                //  MySqlDataReader myReader2;

                //  myReader2 = myCmd.ExecuteReader();
                //  Response.Write("Data deleted");
                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('Something went wrong')</script)");
            }
        }*/
    
       var result = MessageBox.Show("Do you want to Delete?", "Deleting.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
        if (result == System.Windows.Forms.DialogResult.Yes)
        {
            try
            {
                string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                string queryd = "delete from closingstock  where stockID='" + txtStockID.Text + "';";
                // Response.Write(queryd);

                MySqlConnection conn = new MySqlConnection(myConnection);
                conn.Open();

                MySqlCommand myCmd = new MySqlCommand(queryd, conn);

                if (myCmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Closing Stock Details Deleted...')</script>");
                }
                //  MySqlDataReader myReader2;

                //  myReader2 = myCmd.ExecuteReader();
                //  Response.Write("Data deleted");
                conn.Close();
                txtStockID.Text = "";
                
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Oops!...Something went wrong')</script>");
            }

        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}