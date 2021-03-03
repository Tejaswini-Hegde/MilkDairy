<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllReceiptaspx.aspx.cs" Inherits="ViewAllReceiptaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 697px;
            width: 1364px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
    
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="27px" style="margin-left: 488px" Text="RECEIPT DETAILS" 
        Width="264px"></asp:Label>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="rTRN" DataSourceID="SqlDataSource1" 
        Height="518px" style="margin-left: 142px; margin-top: 33px;" 
        Width="1027px" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="rTRN" HeaderText="Transaction No." ReadOnly="True" 
                SortExpression="rTRN" InsertVisible="False" />
            <asp:BoundField DataField="CID" HeaderText="Customer ID" 
                SortExpression="CID" />
            <asp:BoundField DataField="rDate" HeaderText="Receipt Date" 
                SortExpression="rDate" />
            <asp:BoundField DataField="rAmt" HeaderText="Amount Received" 
                SortExpression="rAmt" />
            <asp:BoundField DataField="balAmt" HeaderText="Balanace Amount" 
                SortExpression="balAmt" />
            <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" 
                SortExpression="paymentMode" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
        SelectCommand="select * from receipt"></asp:SqlDataSource>
    
    </form>
</body>
</html>
