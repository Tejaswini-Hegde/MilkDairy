<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteSales.aspx.cs" Inherits="DeleteSales" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 657px;
            width: 1349px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('Cool Light Blue Backgrounds HD wallpaper background.jpg'); background-position: left center">
    
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton1_Click" CausesValidation="false"/>
   
    <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 542px; margin-top: 0px;" 
            Text="Delete Sales Details" Width="214px"></asp:Label>
    
    <br />
    &nbsp;<asp:Panel ID="Panel1" runat="server" Height="503px" 
        style="margin-left: 306px" Width="668px" BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 146px" Text="Enter Transaction Number" 
            Width="233px"></asp:Label>
        <br />
        <br />
        &nbsp;
        <asp:TextBox ID="txtTRN" runat="server" Height="32px" 
            style="margin-left: 139px" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtTRN" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" style="margin-left: 24px" Text="Search" Width="123px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="76px" 
            style="margin-left: 151px" Width="241px" 
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
            SelectCommand="select * from salesdetails where sTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" onclick="cmdDelete_Click" style="margin-left: 32px" 
            Text="Delete" Width="121px" />
    </asp:Panel>
    
    </form>
</body>
</html>
