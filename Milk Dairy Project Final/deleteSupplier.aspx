<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteSupplier.aspx.cs" Inherits="deleteSupplier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 892px;
            width: 1348px;
        }
    </style>
</head>
<body style="height: 890px; width: 1353px; margin-top: 0px">
    <form id="form1" runat="server" 
    style="background-image: url('Cool%20Light%20Blue%20Backgrounds%20HD%20wallpaper%20background.jpg'); background-position: left center; margin-top: 0px;">
   
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton1_Click" CausesValidation="false"/>
   
    <br />
    <br />
   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 589px; margin-top: 21px;" 
            Text="Delete Supplier Details" Width="237px"></asp:Label>
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="538px" style="margin-left: 412px; margin-top: 24px;" 
        Width="612px" BackImageUrl="~/22738090.jpg">
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 109px" Text="Enter Supplier ID" 
            Width="233px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSID" runat="server" Height="32px" 
            style="margin-left: 40px" TabIndex="1" Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtSID" ErrorMessage="*" style="margin-left: 10px" 
            Width="25px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 15px" Text="Search" Width="123px" 
            CausesValidation="false" UseSubmitBehavior="false" />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" Height="61px" 
            style="margin-left: 109px; margin-top: 40px" Width="251px" 
            EmptyDataText="No Records Found....." GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from supplierinfo  where SID=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSID" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="63px" onclick="cmdDelete_Click" style="margin-left: 18px" 
            Text="Delete" Width="120px"  />
    </asp:Panel>
    </form>
</body>
</html>
