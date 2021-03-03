<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
   
    <style type="text/css">
        #form1
        {
            height: 683px;
        }


        .style1
        {
            width: 36px;
            height: 26px;
            margin-top: 8px;
        }
        .style2
        {
            width: 35px;
            height: 26px;
        }


    </style>
    </head>
    <body>
    <form id="form1" runat="server">
   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        ForeColor="#000066" Height="36px" 
        style="margin-left: 655px; margin-top: 0px;" Text="LOGIN"></asp:Label>
   
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="550px" style="margin-left: 427px" 
        Width="569px" BackImageUrl="Login.jpg">
        <br />
        <br />
        <img class="style1" src="user_32px.png" />
        <asp:TextBox ID="txtU" runat="server" AutoComplete="off" Height="36px" 
            style="margin-left: 0px" Width="250px" placeholder="Username"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtU" ErrorMessage="*" ForeColor="Red" Height="31px" 
            style="margin-left: 17px" Width="13px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <img class="style2" src="key_30px.png" />
        <asp:TextBox ID="txtP" runat="server" AutoComplete="off" Height="36px" 
            style="margin-left: 0px" Width="250px" placeholder="Password" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtP" ErrorMessage="*" ForeColor="Red" Height="20px" 
            style="margin-left: 20px" Width="13px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" Height="24px" 
            onclick="LinkButton2_Click" style="margin-left: 43px">Forgot Password?</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="45px" 
            ImageUrl="CaptchaDemo.aspx" style="margin-left: 55px" Width="178px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" 
            onclick="ImageButton1_Click" Width="50px" ImageUrl="refresh.png" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtVerification" runat="server" AutoComplete="off" 
            Height="36px" placeholder="Captcha" style="margin-left: 45px" 
            Width="250px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="cmdLogin" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#000066" Height="55px" style="margin-left: 40px" Text="Login" 
            Width="115px" onclick="cmdLogin_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="cmdCancel" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#000066" Height="55px" onclick="cmdCancel_Click" 
            style="margin-left: 26px" Text="Cancel" Width="115px" CausesValidation="false" UseSubmitBehavior="false" />
        <br />
        <br />
    </asp:Panel>
   
    </form>
</body>
</html>
