<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllReceipt.aspx.cs" Inherits="AllReceipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 796px;
        }
    </style>
</head>
<body background="bg1.jpg">
    <form id="form1" runat="server">
     <asp:ImageButton ID="ImageButton1" runat="server" BackColor="#CCFFFF" 
         Height="19px" ImageUrl="~/PngItem_2679901.png" 
         style="margin-left: 0px" Width="36px" CausesValidation="false" 
         onclick="ImageButton1_Click1" />
&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 584px; margin-top: 0px;" 
            Text="Receipt" Width="109px" ForeColor="White"></asp:Label>
   <asp:Panel ID="Panel1" runat="server" Height="596px" 
        style="margin-left: 368px; margin-top: 12px; margin-bottom: 117px;" 
         Width="654px" BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 125px" Text="Enter Customer ID" 
            Width="206px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:TextBox ID="txtCID" runat="server" Height="37px" 
            style="margin-left: 109px" Width="256px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtCID" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 16px" Text="Search" Width="121px" />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" 
            Height="61px" style="margin-left: 123px; margin-top: 25px" Width="349px" 
            AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            
            SelectCommand="select rTRN,rDate,rAmt,balAmt,paymentMode from receipt where CID=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCID" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </asp:Panel>
    </form>
</body>
</html>
