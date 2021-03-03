<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteDairy.aspx.cs" Inherits="DeleteDairy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="DeleteStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 758px;
            width: 1340px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('Cool%20Light%20Blue%20Backgrounds%20HD%20wallpaper%20background.jpg'); background-position: left center; overflow: hidden; margin-left: 0px; margin-right: 0px; margin-top: 0px;">
   
    <asp:ImageButton ID="ImageButton1" runat="server" 
        Height="19px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" onclick="ImageButton1_Click" CausesValidation="false"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Height="35px" style="margin-left: 557px" Text="Delete Dairy Details" 
            Width="219px"></asp:Label>
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="450px" 
        style="margin-left: 355px; margin-top: 32px" Width="646px" 
        BackImageUrl="~/22738090.jpg">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="35px" style="margin-left: 115px" Text="Enter Dairy ID" Width="150px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDid" runat="server" Height="32px" style="margin-left: 84px" 
            Width="252px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtDid" ErrorMessage="Please Enter Your Address" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" style="margin-left: 45px" Text="Search" Width="120px" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataSourceID="SqlDataSource1" 
            EmptyDataText="No Records Found....." ForeColor="Black" Height="83px" 
            style="margin-left: 144px" Width="253px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:milkdairyConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:milkdairyConnectionString.ProviderName %>" 
            SelectCommand="select * from dairydetails where did=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDid" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="56px" onclick="cmdDelete_Click" style="margin-left: 202px" 
            Text="Delete" Width="117px" />
        <br />
        <br />
&nbsp;
        <br />
        <br />
        <br />
    </asp:Panel>
   
    </form>
</body>
</html>
