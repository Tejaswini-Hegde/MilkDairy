<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllFatandCost.aspx.cs" Inherits="ViewAllFatandCost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
    
     
    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
        ImageUrl="~/PngItem_2679901.png" onclick="ImageButton1_Click" 
        Width="33px" />
    
     
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Size="XX-Large" Height="38px" style="margin-left: 467px" 
        Text="Fat and Cost" Width="194px"></asp:Label>
    
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" 
        DataKeyNames="fat" DataSourceID="SqlDataSource1" 
        style="margin-left: 174px" Width="937px" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        Height="448px" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="fat" HeaderText="Fat" ReadOnly="True" 
                SortExpression="fat" />
            <asp:BoundField DataField="cattle" HeaderText="Cattle" 
                SortExpression="cattle" />
            <asp:BoundField DataField="snf" HeaderText="SNF" SortExpression="snf" />
            <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="select * from fatandcost"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    </form>
</body>
</html>
