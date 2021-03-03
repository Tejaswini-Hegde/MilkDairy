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


public partial class Login : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        txtU.Focus();
    }

    protected void cmdLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string decryptpassword = Md5FromString(txtP.Text); //call the NEW MD5 string function to check pswd with db string

            MySqlConnection conn = new MySqlConnection("Server=localhost;Database=MilkDairy;Uid=root;Pwd=nimda;");

            conn.Open();

            string sql = "Select mypswd,did,UTy from login where username='" + txtU.Text + "';";

            // Response.Write(sql);

            MySqlCommand cmd = new MySqlCommand(sql,conn);


            MySqlDataReader dr = cmd.ExecuteReader();

            Boolean b = dr.HasRows;

            if (txtVerification.Text.ToLower() == Session["CaptchaVerify"].ToString())
            {
                if (b)
                {
                    while (dr.Read())
                    {
                        Session["UserType"] = dr["UTy"].ToString();
                        Session["LoggedDairy"] = dr["did"].ToString();
                        if(decryptpassword.Equals(dr[0]))
                        {
                            if ((string)Session["UserType"] == "1")
                            {
                                Response.Write("<script>alert('Login Successful...'),window.location.href='WelcomeAdmin.aspx';</script>");

                            }

                            if ((string)Session["UserType"] == "2")
                            {
                                Response.Write("<script>alert('Login Successful...'),window.location.href='WelcomeSupplier.aspx';</script>");

                            }

                            if ((string)Session["UserType"] == "3")
                            {
                                Response.Write("<script>alert('Login Successful...'),window.location.href='WelcomeCustomer.aspx';</script>");

                            }
                            
                            
                        }
                        else
                        {

                            Response.Write("<script> alert('Invalid Username or Password')</script>");
                            txtU.Text = "";
                            txtP.Text = "";
                            txtVerification.Text = "";
                        }

                    }
                }
                else
                {
                    Response.Write("<script> alert('Login is not successful')</script>");
                    txtU.Text = "";
                    txtP.Text = "";
                    txtVerification.Text="";
                }
            }
            else
            {

                Response.Write("<script> alert('Invalid captcha...')</script>");
                txtU.Text = "";
                txtP.Text = "";
                txtVerification.Text = "";
            }


        }
       
       
        catch (Exception ex)
        {
            Response.Write("<script> alert('Oops...! Something went wrong..')</script>");
        }
    }

    //http://www.vbforums.com/showthread.php?678890-Get-MD5-Hash-From-String
    //converts given plain pswd string to MD5 string, which is stored at db  in a same format
    //also same function is used while creating new user as well as & while checking pswd from login screen.
    //requires only one library:   using System.Security.Cryptography
    
      public string Md5FromString(string Source)  // code to convert plain pswd to MD5
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






    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }



    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Image1.ImageUrl = "CaptchaDemo.aspx";
    }
}