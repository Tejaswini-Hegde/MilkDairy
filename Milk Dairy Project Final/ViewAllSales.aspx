<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllSales.aspx.cs" Inherits="ViewAllSales" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 922px;
            width: 1413px;
            margin-right: 199px;
        }
    </style>
</head>
<body style="width: 1435px">
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click1" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="27px" style="margin-left: 399px" Text="SALES DETAILS" 
        Width="264px"></asp:Label>
   
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="sTRN" DataSourceID="SqlDataSource1" Height="771px" 
        style="margin-left: 58px" Width="1217px" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="sTRN" HeaderText="Transaction" ReadOnly="True" 
                SortExpression="sTRN" InsertVisible="False" />
            <asp:BoundField DataField="CID" HeaderText="Customer Master" 
                SortExpression="CID" />
            <asp:BoundField DataField="sDate" HeaderText="Date of Sale" 
                SortExpression="sDate" />
            <asp:BoundField DataField="sQty" HeaderText="Quantity" SortExpression="sQty" />
            <asp:BoundField DataField="stockID" HeaderText="StockI D" 
                SortExpression="stockID" />
            <asp:BoundField DataField="sRate" HeaderText="Rate" SortExpression="sRate" />
            <asp:BoundField DataField="sTotal" HeaderText="Total" SortExpression="sTotal" />
            <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
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
        SelectCommand="select * from salesdetails"></asp:SqlDataSource>
   
    </form>
</body>
</html>
