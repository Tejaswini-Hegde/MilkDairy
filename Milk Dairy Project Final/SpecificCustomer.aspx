<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecificCustomer.aspx.cs" Inherits="SpecifiCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
</head>
<body>
   
       <form id="form1" runat="server" 
    style="background-image: url('29132199%20(1).jpg'); height: 696px;">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" onclick="ImageButton2_Click1" 
         />
   
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="37px" style="margin-left: 407px" Text="Customer Details" Width="182px"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/22738090.jpg" 
        Height="440px" style="margin-left: 299px; margin-top: 0px" Width="651px">
        <br />
        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="37px" style="margin-left: 167px" Text="Enter Customer ID" 
            Width="251px"></asp:Label>
        <br />
&nbsp;
        <asp:TextBox ID="txtCID" runat="server" Height="36px" 
            style="margin-left: 165px" TabIndex="1" Width="260px" 
        AutoPostBack="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtCID" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="cmdShow" runat="server" style="margin-left: 41px" 
            Text="Show" Width="107px" Font-Bold="True" Font-Size="Large" 
            Height="57px"/>
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="114px" 
            style="margin-left: 170px" Width="276px">
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
            SelectCommand="select * from customermaster where CID=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCID" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</body>
</html>
