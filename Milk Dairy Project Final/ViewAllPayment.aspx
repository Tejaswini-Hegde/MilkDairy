<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllPayment.aspx.cs" Inherits="ViewAllPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 715px;
            width: 1356px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
    
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="27px" style="margin-left: 475px" Text="PAYMENT DETAILS" 
        Width="264px"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="pTRN" DataSourceID="SqlDataSource1" 
        Height="559px" style="margin-left: 165px" 
        Width="1003px" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="pTRN" HeaderText="Transaction" ReadOnly="True" 
                SortExpression="pTRN" InsertVisible="False" />
            <asp:BoundField DataField="SID" HeaderText="Supplier ID" SortExpression="SID" />
            <asp:BoundField DataField="pDate" HeaderText="Date of Payment" 
                SortExpression="pDate" />
            <asp:BoundField DataField="amtPaid" HeaderText="Amount Paid" 
                SortExpression="amtPaid" />
            <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" 
                SortExpression="paymentMode" />
            <asp:BoundField DataField="balance" HeaderText="Balance" 
                SortExpression="balance" />
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
        SelectCommand="select * from paymentdetails"></asp:SqlDataSource>
    <br />
    <br />
    
    </form>
</body>
</html>
