<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllClosingStock.aspx.cs" Inherits="ViewAllClosingStock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 732px;
            width: 1357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click"/>
   
    <label style="font-size: x-large; font-style: normal; font-weight: bold; font-family: 'Sitka Heading';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLOSING STOCK </label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="stockID" DataSourceID="SqlDataSource1" Height="578px" style="margin-left: 110px; margin-top: 22px" 
        Width="1126px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
        BorderWidth="3px" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="stockID" HeaderText="Stock ID" ReadOnly="True" 
                SortExpression="stockID" />
            <asp:BoundField DataField="stdSNF" HeaderText="Standard SNF" 
                SortExpression="stdSNF" />
            <asp:BoundField DataField="stdFAT" HeaderText="Standard FAT" 
                SortExpression="stdFAT" />
            <asp:BoundField DataField="stdRATE" HeaderText="Standard RATE" 
                SortExpression="stdRATE" />
            <asp:BoundField DataField="prsntStock" HeaderText="Present Stock" 
                SortExpression="prsntStock" />
            <asp:BoundField DataField="sDate" HeaderText="Stock Date" 
                SortExpression="sDate" />
            <asp:BoundField DataField="did" HeaderText="Dairy ID" SortExpression="did" />
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
        SelectCommand="select * from closingstock"></asp:SqlDataSource>
    
    </form>
</body>
</html>
