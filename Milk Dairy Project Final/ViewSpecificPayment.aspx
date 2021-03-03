<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewSpecificPayment.aspx.cs" Inherits="ViewSpecifiPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 705px;
            width: 1344px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('29132199 (1).jpg')">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" onclick="ImageButton2_Click2" 
       />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<label style="font-size: large" width="120">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" 
        runat="server" Font-Bold="True" Font-Size="X-Large" Height="31px" 
        style="margin-left: 385px" Text="Payment Details" Width="179px"></asp:Label>
    </label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="401px" style="margin-left: 386px" 
        Width="580px" BackImageUrl="~/22738090.jpg">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="37px" style="margin-left: 91px" Text="Enter Transaction Number" 
            Width="225px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpTRN" runat="server" Height="36px" 
            style="margin-left: 46px" Width="260px" reqiured></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtpTRN" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
              <asp:Button ID="cmdShow" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" Text="Show" Width="107px" style="margin-left: 27px" />
        <asp:DetailsView ID="DetailsView1" runat="server" 
        AutoGenerateRows="False" DataKeyNames="pTRN" DataSourceID="SqlDataSource1" 
        Height="50px" style="margin-left: 82px; margin-top: 29px;" Width="300px" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="pTRN" HeaderText="Transaction No." ReadOnly="True" 
                SortExpression="pTRN" InsertVisible="False" />
                <asp:BoundField DataField="SID" HeaderText="Supplier ID" 
                    SortExpression="SID" />
                <asp:BoundField DataField="pDate" HeaderText="Date of Payment" 
                SortExpression="pDate" />
                <asp:BoundField DataField="amtPaid" HeaderText="Amount Paid" 
                SortExpression="amtPaid" />
                <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" 
                SortExpression="paymentMode" />
                <asp:BoundField DataField="balance" HeaderText="Balance" 
                SortExpression="balance" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from paymentdetails where pTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtpTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
   
    </form>
</body>
</html>
