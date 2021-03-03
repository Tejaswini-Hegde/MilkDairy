using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // string s = Session["User"].ToString();
       // txtUsername.Text = s;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void cmdSave_Click(object sender, EventArgs e)
    {
        try
        {
         //   string strpassword = Encryptdata(txtConfirmPassword.Text);  to be replaced with new MD5 string password generation

            string strpassword = Md5FromString(txtConfirmPassword.Text);//new pswd MD5 String generation

            string myConnection = "Server=localhost;Database=milkdairy;Uid=root;Pwd=nimda";

            string updateQuery = "update login set mypswd='" + strpassword + "'where username='" + txtUsername.Text + "';";

            MySqlConnection con = new MySqlConnection(myConnection);
            con.Open();
            MySqlCommand cmd = new MySqlCommand(updateQuery, con);
            MySqlDataReader myReader;

            myReader = cmd.ExecuteReader();

            Response.Write("<Script>alert('Password changed...')</script>");
            Response.Redirect("Login.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Oops..!Something went wrong..')</script>");
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
    //end of MD5 string function@ ChangePassword.aspx.cs file
}//end of class