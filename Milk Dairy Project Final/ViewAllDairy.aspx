<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllDairy.aspx.cs" Inherits="ViewAllDairy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 761px;
            width: 1258px;
            margin-top: 0px;
        }
    </style>
</head>
<body style="width: 1248px; height: 762px;" background="22738090.jpg">
    <form id="form1" runat="server">
    
    <p>
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="27px" style="margin-left: 455px" Text="DAIRY DETAILS" Width="264px"></asp:Label>
   
    </p>
    
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="did" DataSourceID="SqlDataSource1" Height="537px" 
        Width="1086px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
        BorderWidth="3px" CellSpacing="2" style="margin-left: 126px; margin-top: 0px;" 
        ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="did" HeaderText="Dairy ID" ReadOnly="True" 
                SortExpression="did" />
            <asp:BoundField DataField="dairyname" HeaderText="Dairy Name" 
                SortExpression="dairyname" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="mphone" HeaderText="Phone Number" 
                SortExpression="mphone" />
            <asp:BoundField DataField="head" HeaderText="Dairy Head" 
                SortExpression="head" />
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
        SelectCommand="select * from dairydetails"></asp:SqlDataSource>
    
    </form>
</body>
</html>
