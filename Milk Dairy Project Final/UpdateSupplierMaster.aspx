<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateSupplierMaster.aspx.cs" Inherits="UpdateSupplierMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="UpdateStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 903px;
            width: 1339px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('updatebackground.png')">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" onclick="ImageButton2_Click2" 
        />
   
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" Text="Update Supplier Details" Height="31px" 
        style="margin-left: 0px" Width="1293px" align="center" BackColor="#66FF33"></asp:Label>
   
    <asp:Panel ID="Panel1" runat="server" Height="710px" style="margin-left: 353px; margin-top: 27px;" 
        Width="685px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtSearch" runat="server" Height="32px" 
            style="margin-left: 0px" Width="252px"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="txtSearch" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="cmdFind" runat="server" Font-Bold="True" Font-Size="Large" 
            onclick="cmdFind_Click" style="margin-left: 36px" Text="Search For Supplier ID" 
            Width="252px" Height="36px" CausesValidation="false" UseSubmitBehavior="false" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Name" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="1" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Enter Alphabets Only" ForeColor="Red" 
            ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Address" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server" Height="32px" 
            style="margin-left: 166px" TabIndex="2" TextMode="MultiLine" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtAddress" ErrorMessage="Please Enter Dairy Name" 
            ForeColor="Black" Height="16px" style="margin-left: 7px" Width="16px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
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
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
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
            ValidationExpression="\d{5,12}"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdUpdate" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="55px" onclick="Button1_Click" style="margin-left: 36px" TabIndex="7" 
            Text="Update" Width="115px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdCancel" runat="server" Font-Bold="True" Font-Size="Large" 
            style="margin-left: 53px" Text="Cancel" Width="115px" Height="55px" 
            TabIndex="8" CausesValidation="false" UseSubmitBehavior="false" onclick="cmdCancel_Click1" 
            />
    </asp:Panel>
   
    </form>
</body>
</html>
