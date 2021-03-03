<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeletePayment.aspx.cs" Inherits="DeletePayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 636px;
            width: 1357px;
            margin-right: 0px;
        }
    </style>
</head>
<body background="Cool%20Light%20Blue%20Backgrounds%20HD%20wallpaper%20background.jpg" 
    style="height: 632px; width: 1361px">
    <form id="form1" runat="server">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton2_Click" CausesValidation="false" UseSubmitBehaviour="false" 
        />
   
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 265px; margin-top: 0px;" 
            Text="Delete Payment" Width="170px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="467px" 
        style="margin-left: 299px; margin-top: 22px" Width="683px" 
        BackImageUrl="~/22738090.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="21px" style="margin-left: 188px" Text="Enter Transaction" 
            Width="171px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpTRN" runat="server" Height="37px" 
            style="margin-left: 155px" Width="256px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtpTRN" ForeColor="Black" Height="16px" 
            style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="59px" style="margin-left: 26px" Text="Search" Width="121px" 
            CausesValidation="false" UseSubmitBehavior="false"/>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataSourceID="SqlDataSource1" 
            EmptyDataText="No Records Found...." ForeColor="Black" Height="50px" 
            style="margin-left: 180px" Width="267px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from paymentdetails where pTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtpTRN" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" 
            Font-Bold="True" Font-Size="Large" 
            Height="59px" onclick="Button1_Click" style="margin-left: 85px" Text="Delete" 
            Width="120px"/>
    </asp:Panel>
   
    </form>
</body>
</html>
