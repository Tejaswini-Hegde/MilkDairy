<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerMaster.aspx.cs" Inherits="customerMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="RegistrationStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function firstElementPress(e) {
            if (e.keyCode == 13) {
                document.getElementById("txtAadhar").Focus();
                return false
            }
        }
    </script>
    <style type="text/css">
        #form1
        {
            height: 1026px;
            width: 1323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    
    style="background-position: center top; background-color: #C0C0C0; overflow: hidden; background-image: url('Wallpaper%20%20%20Art%20wallpaper%20%20%20Background%20Color%202%20wallpaper.jpg'); position: absolute; z-index: auto; top: 15px; left: 10px;">
   
    <br />
  &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Customer Registation" 
            Font-Bold="True" Font-Size="X-Large" Height="31px" 
        style="margin-left: 211px"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="963px" 
        style="margin-left: 355px; margin-top: 0px" Width="699px">
        
        <br />
        
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Customer ID" Width="107px"></asp:Label>
        <br />
        <asp:TextBox ID="txtCID" runat="server" Height="36px" required="" 
            style="margin-left: 166px" Width="294px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtCID" ErrorMessage="Please Enter Name" ForeColor="Black" 
            Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
            ControlToValidate="txtCID" ErrorMessage="Enter Digits Only" ForeColor="Red" 
            ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Name" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server" Height="36px" 
            style="margin-left: 166px" Width="294px" required TabIndex="1"
            ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="Please Enter Name" ForeColor="Black" 
            Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtName" 
            ErrorMessage="Enter Alphabets Only" ForeColor="Red" 
            ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Aadhar" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtAadhar" runat="server" Height="36px" 
            style="margin-left: 166px" Width="294px" required TabIndex="2"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtAadhar" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txtAadhar" Display="Dynamic" 
            ErrorMessage="Enter Valid Aadhar Number" ForeColor="Red" 
            ValidationExpression="\d{12}"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Address" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server" Height="36px" 
            style="margin-left: 166px" TabIndex="3" TextMode="MultiLine" Width="294px" 
            required></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtAddress" ErrorMessage="Please Enter Your Address" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Phone Number" Width="166px"></asp:Label>
        <br />
        <asp:TextBox ID="txtPhone" runat="server" Height="36px" 
            style="margin-left: 166px" TabIndex="4" Width="294px" required></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtPhone" ErrorMessage="Please Enter Phone Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="txtPhone" Display="Dynamic" 
            ErrorMessage="Enter Valid Phone Number" ForeColor="Red" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Bank A/c" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtBank" runat="server" Height="36px" 
            style="margin-left: 166px" TabIndex="5" Width="294px" required></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtBank" ErrorMessage="Please Enter Account Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtBank" Display="Dynamic" 
            ErrorMessage="Enter Valid Account Number" ForeColor="Red" 
            ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="IFSC" Width="69px"></asp:Label>
        <br />
        <asp:TextBox ID="txtIfsc" runat="server" Height="36px" 
            style="margin-left: 166px" TabIndex="6" Width="294px" required></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtIfsc" ErrorMessage="Please Enter IFSC" ForeColor="Black" 
            Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ControlToValidate="txtIfsc" Display="Dynamic" ErrorMessage="Enter Valid IFSC" 
            ForeColor="Red" ValidationExpression="[A-Z0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 168px" Text="Dairy ID" Width="119px"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="did" DataValueField="did" 
            Height="36px" style="margin-left: 169px" TabIndex="7" Width="294px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="SELECT did FROM milkdairy.dairydetails"></asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
            Height="25px" style="margin-left: 163px" Text="Balance Amount" Width="119px"></asp:Label>
        <br />
        <asp:TextBox ID="txtBal" runat="server" Height="36px" 
            style="margin-left: 165px" TabIndex="8" Width="294px" required></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="cmdSave" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="55px" Text="Save" Width="115px" 
            TabIndex="9" style="margin-left: 91px" UseSubmitBehavior="false" 
            CausesValidation="false" onclick="cmdSave_Click1"/>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cmdCancel" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="55px" Text="Cancel" Width="115px" TabIndex="10" 
            style="margin-left: 0px" UseSubmitBehavior="false" 
            CausesValidation="false" onclick="cmdCancel_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="cmdBack" 
            runat="server" Font-Bold="True" Font-Size="Large" 
            Height="55px"  style="margin-left: 10px" TabIndex="11" 
            Text="Back" Width="115px" CausesValidation="false" 
            UseSubmitBehavior="false" onclick="cmdBack_Click1"
            />
&nbsp;</asp:Panel>
  
    </form>
</body>
</html>
