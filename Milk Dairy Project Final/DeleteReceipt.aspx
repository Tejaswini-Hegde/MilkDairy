<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteReceipt.aspx.cs" Inherits="DeleteReceipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 732px;
            width: 1229px;
        }
#txtStockID,#Button1,#Button2,#txtAadhar,#txtDid,#txtFat,#txtpTRN,#txtTRN,#txtAadhar
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
<body background="Cool%20Light%20Blue%20Backgrounds%20HD%20wallpaper%20background.jpg" 
    style="height: 632px; width: 1361px">
    <form id="form1" runat="server">
   
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" 
        onclick="ImageButton1_Click1"/>
   
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 582px; margin-top: 0px;" 
            Text="Delete Receipt" Width="170px"></asp:Label>
   
    <asp:Panel ID="Panel1" runat="server" Height="473px" 
        style="margin-left: 338px; margin-top: 29px" Width="673px" 
        BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 140px" Text="Enter Receipt Number" 
            Width="206px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTRN" runat="server" Height="37px" 
            style="margin-left: 115px" Width="256px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtTRN" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 24px" Text="Search" Width="121px" />
        <br />
        <br />
        &nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
            Height="76px" style="margin-left: 147px" Width="259px" 
            EmptyDataText="No Records Found...." BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal" AutoGenerateRows="False" DataKeyNames="rTRN" 
            >
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="rTRN" HeaderText="Transaction No." 
                    InsertVisible="False" ReadOnly="True" SortExpression="rTRN" />
                <asp:BoundField DataField="CID" HeaderText="Customer ID" SortExpression="CID" />
                <asp:BoundField DataField="rDate" HeaderText="Receipt Date" 
                    SortExpression="rDate" />
                <asp:BoundField DataField="rAmt" HeaderText="Received Amount" 
                    SortExpression="rAmt" />
                <asp:BoundField DataField="balAmt" HeaderText="Balance Amount" 
                    SortExpression="balAmt" />
                <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" 
                    SortExpression="paymentMode" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from receipt where rTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" onclick="Button1_Click" style="margin-left: 193px" Text="Delete" 
            Width="120px" UseSubmitBehavior="false" />
    </asp:Panel>
   
    </form>
</body>
</html>
