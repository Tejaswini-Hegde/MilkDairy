<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        txtTRN.Focus();
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WelcomeAdmin.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 653px;
            width: 1360px;
        }
    </style>
</head>
<body style="width: 1362px; height: 652px">
    <form id="form1" runat="server" 
    style="background-image: url('29132199 (1).jpg')">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" onclick="ImageButton2_Click" 
        />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label style="font-size: large" width="120">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Height="31px" style="margin-left: 300px" Text="Sales Details" Width="179px"></asp:Label>
    <br />
    </label>&nbsp;<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/22738090.jpg" 
        Height="522px" style="margin-left: 348px" Width="610px">
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Size="Large" Height="37px" style="margin-left: 86px" 
            Text="Enter Transaction Number" Width="225px"></asp:Label>
        <br />
        &nbsp;
        <asp:TextBox ID="txtTRN" runat="server" Height="36px" style="margin-left: 88px" 
            Width="260px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtTRN" ErrorMessage="Please Enter Aadhar Number" 
            ForeColor="Black" Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
        <asp:Button ID="cmdShow" runat="server" Font-Bold="True" Font-Size="Large" 
            Height="57px" style="margin-left: 44px" Text="Show" Width="107px" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="16px" 
            style="margin-left: 99px" Width="276px" AllowPaging="True" 
            AutoGenerateRows="False" DataKeyNames="sTRN" 
            EmptyDataText="No Records Found...">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="sTRN" HeaderText="sTRN" 
                    InsertVisible="False" ReadOnly="True" SortExpression="sTRN" />
                <asp:BoundField DataField="CID" HeaderText="CID" 
                    SortExpression="CID" />
                <asp:BoundField DataField="sDate" HeaderText="sDate" SortExpression="sDate" />
                <asp:BoundField DataField="sQty" HeaderText="sQty" SortExpression="sQty" />
                <asp:BoundField DataField="stockID" HeaderText="stockID" 
                    SortExpression="stockID" />
                <asp:BoundField DataField="sRate" HeaderText="sRate" SortExpression="sRate" />
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
            SelectCommand="select * from salesdetails where sTRN=?">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTRN" DefaultValue="" Name="?" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
   
    </form>
</body>
</html>
