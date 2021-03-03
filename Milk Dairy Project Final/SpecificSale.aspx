<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecificSale.aspx.cs" Inherits="SpecificSale" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<head id="Head1" runat="server">
    <title> </title>
    <style type="text/css">
        #form1
        {
            height: 703px;
            width: 1345px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('29132199 (1).jpg')">
    <label style="font-size: large" width="120"><asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" 
        onclick="ImageButton2_Click1"/>
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="31px" style="margin-left: 346px" Text="Sales Details" 
        Width="186px"></asp:Label>
    </label>&nbsp;<asp:Panel ID="Panel1" runat="server" Height="414px" 
        style="margin-left: 302px; margin-top: 32px" Width="674px" 
        BackImageUrl="~/22738090.jpg">
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="37px" style="margin-left: 134px" Text="Enter Transaction  Number" 
            Width="243px"></asp:Label>
        <br />
        <asp:TextBox ID="txtsTRN" runat="server" Height="36px" 
            style="margin-left: 139px" Width="260px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtsTRN" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="cmdShow" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" style="margin-left: 17px" Text="Show" 
            Width="107px" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" Height="124px" 
            style="margin-left: 142px" Width="281px" GridLines="Horizontal" 
            AutoGenerateRows="False" DataKeyNames="sTRN" 
            EmptyDataText="No Records Found...">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="sTRN" HeaderText="sTRN" InsertVisible="False" 
                    ReadOnly="True" SortExpression="sTRN" />
                <asp:BoundField DataField="CID" HeaderText="CID" 
                    SortExpression="CID" />
                <asp:BoundField DataField="sDate" HeaderText="sDate" 
                    SortExpression="sDate" />
                <asp:BoundField DataField="sQty" HeaderText="sQty" SortExpression="sQty" />
                <asp:BoundField DataField="stockID" HeaderText="stockID" 
                    SortExpression="stockID" />
                <asp:BoundField DataField="sRate" HeaderText="sRate" 
                    SortExpression="sRate" />
                <asp:BoundField DataField="sTotal" HeaderText="sTotal" 
                    SortExpression="sTotal" />
                <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from salesdetails  where sTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtsTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;
    &nbsp;<br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </form>
</body>
</html>

