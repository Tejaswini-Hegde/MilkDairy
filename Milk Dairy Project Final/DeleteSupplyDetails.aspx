<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteSupplyDetails.aspx.cs" Inherits="DeleteSupplyDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 748px;
            width: 1344px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('Cool Light Blue Backgrounds HD wallpaper background.jpg'); background-position: left center">
   
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" 
        onclick="ImageButton1_Click1"/>
   
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 509px; margin-top: 21px;" 
            Text="Delete Supply Details" Width="237px"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="510px" style="margin-left: 373px" 
        Width="604px" BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 127px" Text="Enter Transaction Number" 
            Width="233px"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtTRN" runat="server" Height="32px" 
        style="margin-left: 118px" 
    Width="252px" CausesValidation="true" AutoPostBack="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtTRN" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 15px" Text="Search" Width="125px" CausesValidation="false" UseSubmitBehavior="false"
             />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="38px" 
            style="margin-left: 121px; margin-top: 40px" Width="248px" 
            EmptyDataText="No Records Found....">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from supplydetails where trn=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" onclick="cmdDelete_Click" style="margin-left: 33px" Text="Delete" 
            Width="133px" />
    </asp:Panel>
   
    </form>
</body>
</html>
