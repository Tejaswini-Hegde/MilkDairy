<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllSuppliers.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" />
    <div style="text-align: center; height: 676px;">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="27px" style="margin-left: 0px" Text="SUPPLIER DETAILS" 
            Width="264px"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="sAadhar" DataSourceID="SqlDataSource1" 
            Font-Names="Trebuchet MS" style="margin-left: 159px" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" 
            Height="504px" Width="996px" ForeColor="Black" 
            >
            <Columns>
                <asp:BoundField DataField="fullname" HeaderText="Full Name" 
                    SortExpression="fullname" />
                <asp:BoundField DataField="sAadhar" HeaderText="Aadhar" ReadOnly="True" 
                    SortExpression="sAadhar" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="phoneno" HeaderText="Phone Number" 
                    SortExpression="phoneno" />
                <asp:BoundField DataField="did" HeaderText="Dairy ID" SortExpression="did" />
                <asp:BoundField DataField="bankacc" HeaderText="Bank Account" 
                    SortExpression="bankacc" />
                <asp:BoundField DataField="ifsc" HeaderText="IFSC" SortExpression="ifsc" />
                <asp:BoundField DataField="balAmt" HeaderText="Balance Amount" 
                    SortExpression="balAmt" />
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
            SelectCommand="SELECT * FROM SUPPLIERINFO"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
