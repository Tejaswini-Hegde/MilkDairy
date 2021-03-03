<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteCustomer.aspx.cs" Inherits="DeleteCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 787px;
            width: 1348px;
        }
    </style>
</head>
<body style="height: 793px; width: 1349px">
    <form id="form1" runat="server" 
    style="background-image: url('Cool%20Light%20Blue%20Backgrounds%20HD%20wallpaper%20background.jpg'); background-position: left center; overflow: hidden; margin-bottom: 4px;">
    
    <p>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" 
            onclick="ImageButton1_Click"/>
    </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
            Font-Size="X-Large" Height="35px" style="margin-left: 528px; margin-top: 0px;" 
            Text="Delete Customer Details" Width="256px"></asp:Label>
    
    <asp:Panel ID="Panel1" runat="server" Height="537px" 
        style="margin-left: 398px; margin-top: 8px" Width="584px" 
        BackImageUrl="~/22738090.jpg">
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="35px" style="margin-left: 115px" Text="Enter Customer ID" 
            Width="256px"></asp:Label>
        <asp:TextBox ID="txtCID" runat="server" Height="36px" 
            style="margin-left: 117px" TabIndex="2" Width="252px" 
          ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtCID" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="62px" style="margin-left: 23px" Text="Search" Width="121px" />
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="78px" 
            style="margin-left: 117px" Width="254px" 
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
            SelectCommand="select * from customermaster where CID=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCID" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="60px" onclick="cmdDelete_Click" style="margin-left: 174px" 
            Text="Delete" Width="126px" />
        &nbsp;</asp:Panel>
    
    </form>
</body>
</html>
