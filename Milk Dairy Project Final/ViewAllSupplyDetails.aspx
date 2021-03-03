<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllSupplyDetails.aspx.cs" Inherits="ViewAllSupplyDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 753px;
            width: 1391px;
        }
    </style>
</head>
<body style="height: 800px; width: 1385px">
    <form id="form1" runat="server" style="background-image: url('22738090.jpg')">
    <p>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="27px" style="margin-left: 284px" Text="SUPPLY DETAILS" 
            Width="264px"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyNames="trn" DataSourceID="SqlDataSource1" 
            ForeColor="Black" Height="582px" style="margin-left: 170px" Width="1009px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="trn" HeaderText="trn" 
                    InsertVisible="False" ReadOnly="True" SortExpression="trn" />
                <asp:BoundField DataField="SID" HeaderText="SID" 
                    SortExpression="SID" />
                <asp:BoundField DataField="supplyDate" HeaderText="supplyDate" 
                    SortExpression="supplyDate" />
                <asp:BoundField DataField="FAT" HeaderText="FAT" SortExpression="FAT" />
                <asp:BoundField DataField="SNF" HeaderText="SNF" SortExpression="SNF" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="RATE" HeaderText="RATE" SortExpression="RATE" />
                <asp:BoundField DataField="totalAmt" HeaderText="totalAmt" 
                    SortExpression="totalAmt" />
                <asp:BoundField DataField="stockID" HeaderText="stockID" 
                    SortExpression="stockID" />
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
            SelectCommand="select * from supplydetails"></asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
