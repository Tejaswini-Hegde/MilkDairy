<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="UpdateStyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 607px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('22738090.jpg'); height: 641px;">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
        ImageUrl="~/PngItem_2679901.png" onclick="ImageButton1_Click"  CausesValidation="false" UseSubmitBehaviour="false"/>
    <asp:Label ID="Label1" runat="server" Text="Change Password" Font-Bold="True" 
            Font-Italic="True" Font-Size="X-Large" Height="30px" style="margin-left: 539px" 
            Width="194px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="426px" 
        style="margin-left: 406px; margin-top: 24px" Width="549px">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 110px" Text="Enter Username"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsername" runat="server" Height="32px" 
            style="margin-left: 108px" Width="252px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="NameValidate" runat="server" 
            ControlToValidate="txtUsername" Display="Dynamic" 
            ErrorMessage="Please Enter Name" ForeColor="Red" Height="35px" 
            SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="NameRegularExpressionValidator1" 
            runat="server" ControlToValidate="txtUsername" 
            ErrorMessage="Enter Alphabets only" ForeColor="Red" Height="35px" 
            style="margin-left: 112px" ValidationExpression="[a-zA-Z]+" Width="213px"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter New Password" 
            Font-Bold="True" Font-Size="Medium" Height="25px" 
            style="margin-left: 112px"></asp:Label>
        <br />
        <asp:TextBox ID="txtNewPassword" runat="server" Height="32px" 
            style="margin-left: 108px" Width="252px"  TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PasswordValidate" runat="server" 
            ControlToValidate="txtNewPassword" Display="Dynamic" ForeColor="Red" 
            Height="35px" SetFocusOnError="True" style="margin-left: 2px">*</asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtNewPassword" 
            ErrorMessage="Enter atleast 8 characters including 1 Uppercase , 1 Lowercase ,1 Digit and 1 Special Character" 
            ForeColor="Red" Height="41px" style="margin-left: 108px" 
            ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$" 
            Width="301px"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 109px" Text="Confirm Password"></asp:Label>
        <br />
        &nbsp;
        <asp:TextBox ID="txtConfirmPassword" runat="server" Height="32px" 
            style="margin-left: 100px" Width="252px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ConfirmValidate" runat="server" 
            ControlToValidate="txtConfirmPassword" Display="Dynamic" 
            ErrorMessage="Please Enter Email ID" ForeColor="Red" Height="35px" 
            SetFocusOnError="True" style="margin-left: 2px">*</asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" 
            ErrorMessage="Enter same password" ForeColor="Red" Height="34px" 
            style="margin-left: 122px; margin-bottom: 17px;">Enter Same Password</asp:CompareValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="cmdSave" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="55px"  style="margin-left: 151px" Text="Save" 
            Width="115px" onclick="cmdSave_Click" CausesValidation="false" UseSubmitBehavior="false" />
        
    </asp:Panel>
    
    </form>
</body>
</html>
