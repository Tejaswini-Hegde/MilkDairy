
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Threading.Tasks;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;// for MD5 string generation
using System.Text;


public partial class newUser : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (DairyDropDown.Items.Count == 0)
        {
            DairyDropDown.Items.Add("Select Dairy ID...");

            try
            {
                string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";

                string query = "select did from dairydetails;";

                //Response.Write(query);
                MySqlConnection conn = new MySqlConnection(myConnection1);
                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataReader myReader = null;
                conn.Open();
                myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    DairyDropDown.Items.Add(myReader[0].ToString());

                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        /*-----------------------------------------------------------------------------------------------------------------------------------*/

       /* if (UserTypeDropDown.Items.Count == 0)
        {
            UserTypeDropDown.Items.Add("Select User Type...");

            try
            {
                string myConnection1 = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";
                string query = "select UType from login_type;";
                //Response.Write(query);
                MySqlConnection conn = new MySqlConnection(myConnection1);
                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataReader myReader = null;
                conn.Open();
                myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    UserTypeDropDown.Items.Add(myReader[0].ToString());
                   
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }*/

    }
   

   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtDId.Text = DairyDropDown.SelectedItem.Text;
    }
  /*  protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtUtype.Text = UserTypeDropDown.SelectedItem.Text;
    }*/
    protected void cmdRegister_Click1(object sender, EventArgs e)
    {
        try
        {
            string strpassword = Md5FromString(txtP.Text); //called new password MD5 Conversion() for New USER

            string myConnection = "Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda";

            string query = "insert into login(username,mypswd,email,mobileno,did,UTy) values('" + txtU.Text + "','" + strpassword  + "','"
                + txtEmail.Text + "','" + txtMobile.Text + "','" + txtDId.Text + "','" + txtUtype.Text + "');";


           // Response.Write(query);

            MySqlConnection conn2 = new MySqlConnection(myConnection);
            conn2.Open();
            MySqlCommand cmd = new MySqlCommand(query, conn2);
            MySqlDataReader myReader;

            myReader = cmd.ExecuteReader();



           /* if (txtUtype.Text == "1")
            {
               
                Response.Write("<script>alert('Admin already exist')</script>");
                // Response.Write("<script>alert('Regestered Successfully...'),window.location.href='WelcomeAdmin.aspx';</script>");

            }*/

            if (txtUtype.Text == "2")
            {
                Response.Write("<script>alert('Regestered Successfully..'),window.location.href='WelcomeSupplier.aspx';</script>");

            }

            if (txtUtype.Text== "3")
            {
                Response.Write("<script>alert('Regestered Successfully..'),window.location.href='WelcomeCustomer.aspx';</script>");

            }
                            
                            
            //Response.Write("<Script> alert('Regestered Successfully...'),window.location.href='Welcome.aspx';</script>");

            conn2.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Oops!Something went wrong...");
        }
    }
    
    //http://www.vbforums.com/showthread.php?678890-Get-MD5-Hash-From-String
    //converts given plain pswd string to MD5 string, which is stored at db  in a same format
    //also same function is used while creating new user as well as & while checking pswd from login screen.
    //requires only one library:   using System.Security.Cryptography

    public string Md5FromString(string Source)
    {
        byte[] Bytes;
        StringBuilder sb = new StringBuilder();

        // Check for empty string.
        if (string.IsNullOrEmpty(Source))
            throw new ArgumentNullException();
        // Get bytes from string.
        Bytes = Encoding.Default.GetBytes(Source);
        // Get md5 hash
        Bytes = MD5.Create().ComputeHash(Bytes);
        // Loop though the byte array and convert each byte to hex.
        for (int x = 0; x <= Bytes.Length - 1; x++)
            sb.Append(Bytes[x].ToString("x2"));
        // Return md5 hash.
        return sb.ToString();
    }
    //end of MD5 string function@ newuser.aspx.cs file

    protected void txtUtype_TextChanged(object sender, EventArgs e)
    {
        if (txtUtype.Text == "1")
        {
            Label2.Visible = true;
            Label2.Text = "You are Admin";

        }
        
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }
}//end of class   :  newuser.aspx