<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerMasterUpdate.aspx.cs" Inherits="customerMasterUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="UpdateStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 902px;
            width: 1339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('updatebackground.png')">
     <asp:ImageButton ID="ImageButton" runat="server" Height="23px" ImageUrl="~/PngItem_2679901.png"
        style="margin-left: 0px" Width="36px" CausesValidation="false" 
         onclick="ImageButton_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" Text="Update Customer Details" 
         style="margin-left: 456px" Width="300px"></asp:Label>
   
    <asp:Panel ID="Panel1" runat="server" Height="776px" style="margin-left: 339px" 
        Width="635px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtSearch" runat="server" Height="32px" 
            style="margin-left: 0px" Width="252px"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="txtSearch" 
            ErrorMessage="Please Enter Dairy Name" ForeColor="Black" Height="16px" 
            style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="cmdFind" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="36px" onclick="cmdFind_Click" style="margin-left: 25px" 
            Text="Search For Customer ID" Width="249px"  CausesValidation="false" 
            UseSubmitBehavior="false"/>
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Name" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" Height="32px" 
            style="margin-left: 166px" Width="252px" TabIndex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Enter Alphabets Only" ForeColor="Red" 
            ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Address" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="2" TextMode="MultiLine" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtAddress" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Phone Number" Width="166px"></asp:Label>
        <br />
        <asp:TextBox ID="txtPhone" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="3" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtPhone" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="txtPhone" Display="Dynamic" 
            ErrorMessage="Enter Valid Phone Number" ForeColor="Red" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Bank A/c" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtBank" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="4" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtBank" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtBank" Display="Dynamic" 
            ErrorMessage="Enter Valid Account Number" ForeColor="Red" 
            ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="IFSC" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtIfsc" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="5" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtIfsc" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ControlToValidate="txtIfsc" Display="Dynamic" ErrorMessage="Enter Valid IFSC" 
            ForeColor="Red" ValidationExpression="[A-Z0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdUpdate" runat="server" Font-Bold="True" Font-Size="Large" 
            onclick="Button1_Click" style="margin-left: 0px" Text="Update" 
            Width="115px" Height="55px" TabIndex="7" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="cmdCancel" runat="server" Font-Bold="True" Font-Size="Large" 
            style="margin-left: 0px" Text="Cancel" Width="115px" Height="55px" 
            TabIndex="8"  CausesValidation="false" UseSubmitBehavior="false" 
            onclick="cmdCancel_Click2"  />
    </asp:Panel>
   
    </form>
</body>
</html>
