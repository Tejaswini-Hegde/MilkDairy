<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllCustomer.aspx.cs" Inherits="ViewAllCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 710px;
            width: 1249px;
        }
    </style>
</head>
<body background="22738090.jpg" style="height: 713px">
    <form id="form1" runat="server">
    
    
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click"/>
   
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="27px" style="margin-left: 538px" Text="CUSTOMER DETAILS" 
        Width="264px"></asp:Label>
    
    
    <br />
    <asp:Label ID="Label2" runat="server" Height="38px" style="margin-left: 107px" 
        Text="Number of Customers" Width="165px" Font-Bold="True" 
        Font-Size="Medium"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Size="Large" 
        Height="31px" style="margin-left: 27px" Width="165px"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="cAadhar" DataSourceID="SqlDataSource1" Height="528px" 
        style="margin-left: 85px" Width="1223px" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="fullname" HeaderText="Full Name" 
                SortExpression="fullname" />
            <asp:BoundField DataField="cAadhar" HeaderText="Customer Aadhar" 
                ReadOnly="True" SortExpression="cAadhar" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="phoneno" HeaderText="Phone Number" 
                SortExpression="phoneno" />
            <asp:BoundField DataField="bankacc" HeaderText="Bank Account" 
                SortExpression="bankacc" />
            <asp:BoundField DataField="ifsc" HeaderText="IFSC" SortExpression="ifsc" />
            <asp:BoundField DataField="balAmt" HeaderText="Balance Amount" 
                SortExpression="balAmt" />
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
        SelectCommand="select *from customermaster"></asp:SqlDataSource>
    
    
    </form>
</body>
</html>
