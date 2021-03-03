<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSupply.aspx.cs" Inherits="AllSupply" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 648px;
            width: 1163px;
            margin-top: 0px;
        }
#txtTRN
{
 border: medium inset #0000FF;
    border-radius: 25px;
     font-size: medium;
    font-weight: bold;
    font-style: normal;
    font-variant: normal;
    text-align:center;
}
    </style>
</head>
<body background="bg1.jpg">
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton2" runat="server" BackColor="#CCFFFF" 
        Height="23px" ImageUrl="~/PngItem_2679901.png" Width="34px" 
        CausesValidation="false" onclick="ImageButton2_Click1" />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 574px; margin-top: 0px;" 
            Text="Supply Details" Width="170px" ForeColor="White"></asp:Label>
    
    <asp:Panel ID="Panel1" runat="server" Height="473px" 
        style="margin-left: 363px; margin-top: 31px" Width="602px" 
        BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 88px" Text="Enter Supplier ID" 
            Width="206px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:TextBox ID="txtSID" runat="server" Height="37px" 
            style="margin-left: 73px" Width="256px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtSID" ErrorMessage="Please Enter Name" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 12px" Text="Search" Width="121px" 
            CausesValidation="false" UseSubmitBehavior="false"/>
        <asp:GridView ID="GridView1" runat="server" 
            AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal" Height="227px" 
            style="margin-left: 84px; margin-top: 25px" Width="418px" 
            EmptyDataText="No Records Found...">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            
            SelectCommand="select trn,supplyDate,FAT,SNF,qty,RATE,totalAmt,stockID from supplydetails where SID=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSID" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </asp:Panel>
    
    </form>
</body>
</html>
