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

public partial class DeleteDairy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["DairyId"] != null)
        {
            string s = Session["DairyId"].ToString();
            //Response.Write("<script> alert('Your Dairy Id is '," + s + " );</script>");
           txtDid.Text = Session["DairyId"].ToString();
        }
        
    }
    protected void cmdDelete_Click(object sender, EventArgs e)
    {

        txtDid.Text = Session["DairyId"].ToString();
         var result = MessageBox.Show("Do you want to Delete?", "Deleting.....", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
         if (result == System.Windows.Forms.DialogResult.Yes)
         {
             try
             {
                 string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                 string queryd = "delete from dairydetails where did='" + txtDid.Text + "';";
                 // Response.Write(queryd);

                 MySqlConnection conn = new MySqlConnection(myConnection);
                 conn.Open();

                 MySqlCommand myCmd = new MySqlCommand(queryd, conn);

                 if (myCmd.ExecuteNonQuery() == 1)
                 {
                       Response.Write("<script> alert('Dairy details deleted...');</script>");
                       txtDid.Text = "";
                    
                 }
                 //  MySqlDataReader myReader2;

                 //  myReader2 = myCmd.ExecuteReader();
                 //  Response.Write("Data deleted");
                 conn.Close();
             }
             catch (Exception ex)
             {
                 Response.Write(ex.Message);
             }
         }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
}