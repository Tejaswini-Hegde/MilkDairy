<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newUser.aspx.cs" Inherits="newUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="UpdateStyleSheet.css" rel="stylesheet" type="text/css" />
    
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 892px;
            width: 1277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('bg.jpg'); width: auto; height: auto; bottom: auto;">
   
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="32px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px; margin-top: 0px;" Width="48px" CausesValidation="false" 
        onclick="ImageButton1_Click1"/>
   
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Height="45px" style="margin-left: 537px; margin-top: 0px;" 
            Text="Registration" Width="167px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="789px" style="margin-left: 440px" 
        Width="770px">
        <br />
        
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtU" runat="server" AutoComplete="off" Height="32px" 
            Width="226px" placeholder="Username"></asp:TextBox>
        <asp:RequiredFieldValidator ID="NameValidate" runat="server" 
            ControlToValidate="txtU" Display="Dynamic" ErrorMessage="Please Enter Name" 
            ForeColor="Red" Height="35px" SetFocusOnError="True" 
            style="margin-left: 6px">*</asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="NameRegularExpressionValidator1" 
            runat="server" ControlToValidate="txtU" ErrorMessage="Enter Alphabets only" 
            ForeColor="Red" Height="35px" style="margin-left: 160px" 
            ValidationExpression="[a-zA-Z]+" Width="213px"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Height="32px" 
            style="margin-left: 0px" Width="226px" AutoComplete="off" 
            placeholder="Email Address" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="AadharValidate" runat="server" 
            ControlToValidate="txtEmail" Display="Dynamic" 
            ErrorMessage="Please Enter Email ID" ForeColor="Red" Height="35px" 
            SetFocusOnError="True" style="margin-left: 5px">*</asp:RequiredFieldValidator>

        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" 
            ForeColor="Red" Height="26px" style="margin-left: 155px; margin-top: 12px" 
            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
            Width="148px"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMobile" runat="server" AutoComplete="off" Height="32px" 
            placeholder="Mobile Number " style="margin-left: 0px" Width="226px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PhoneValidate" runat="server" 
            ControlToValidate="txtMobile" Display="Dynamic" 
            ErrorMessage="Please Enter Address" ForeColor="Red" Height="35px" 
            SetFocusOnError="True" style="margin-left: 5px">*</asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="PhoneRegulrExpression" runat="server" 
            ControlToValidate="txtMobile" ErrorMessage=" Enter valid phone number" 
            ForeColor="Red" Height="35px" style="margin-left: 147px" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDId" runat="server" AutoComplete="off" Height="32px" 
            style="margin-left: 20px" Width="226px" placeholder="Dairy ID"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DairyDropDown" runat="server" AutoPostBack="True" 
            Height="26px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="margin-left: 1px" Width="16px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUtype" runat="server" AutoComplete="off" Height="32px" 
            style="margin-left: 91px" Width="226px" placeholder="UserType" 
></asp:TextBox>
        &nbsp;
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
            ForeColor="#FFFFCC" Height="30px" style="margin-left: 70px" 
            Text="( User Type  2 -  Supplier , User Type 3 - Customer)" Width="362px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtP" runat="server" Height="32px" style="margin-left: 0px" 
            TextMode="Password" Width="226px" placeholder="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="AadharValidate0" runat="server" 
            ControlToValidate="txtP" Display="Dynamic" ErrorMessage="Please Enter Email ID" 
            ForeColor="Red" Height="35px" SetFocusOnError="True" style="margin-left: 2px">*</asp:RequiredFieldValidator>

        &nbsp;&nbsp;<br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtP" 
            ErrorMessage="Enter atleast 8 characters including 1 Uppercase , 1 Lowercase ,1 Digit and 1 Special Character" 
            ForeColor="Red" 
            
            ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$" 
            Height="55px" style="margin-left: 94px" Width="307px"></asp:RegularExpressionValidator>
        <br />
        &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtConfirmPassword" runat="server" 
            Height="32px" style="margin-left: 38px" TextMode="Password" Width="226px" 
            placeholder="Retype Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="AadharValidate1" runat="server" 
            ControlToValidate="txtConfirmPassword" Display="Dynamic" 
            ErrorMessage="Please Enter Email ID" ForeColor="Red" Height="35px" 
            SetFocusOnError="True" style="margin-left: 2px">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtP" ControlToValidate="txtConfirmPassword" 
            ErrorMessage="Enter same password" ForeColor="Red" Height="34px" 
            style="margin-left: 148px; margin-bottom: 17px">Enter Same Password</asp:CompareValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="cmdRegister" runat="server" Height="31px" 
            style="margin-left: 169px; margin-top: 0px" 
            Text="Sign Up" Width="115px" onclick="cmdRegister_Click1" />
        <br />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    </form>
</body>
</html>
