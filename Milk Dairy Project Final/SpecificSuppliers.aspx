<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecificSuppliers.aspx.cs" Inherits="SpecificSuppliers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
<head id="Head1" runat="server">
    <link href="ViewSpecificStyleSheet.css" rel="stylesheet" type="text/css" />
    <title>View Supplier Details...based on their Aadhar No</title>
</head>
<body style="height: 697px">
    <form id="form1" runat="server" 
    style="background-image: url('29132199%20(1).jpg'); height: 700px;">
   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        Height="25px" ImageUrl="~/PngItem_2679901.png"  
        style="margin-left: 0px" Width="36px" CausesValidation="false" onclick="ImageButton2_Click2" 
        />
   
        <br />
   
        <asp:Label 
        ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="29px" 
        style="margin-left: 576px" Text="Supplier Details" Width="180px"></asp:Label>
        <br />
        </label>
        <br />
    
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/22738090.jpg" 
        Height="532px" 
        style="margin-left: 370px; margin-top: 26px; margin-bottom: 171px;" 
        Width="602px">
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                Height="30px" style="margin-left: 174px" Text="Enter Supplier ID" 
                Width="206px"></asp:Label>
            <asp:TextBox ID="txtSID" runat="server" Height="36px" 
                style="margin-left: 171px" TabIndex="1" Width="246px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtSID" ErrorMessage="Please Enter Name" ForeColor="Black" 
                Height="16px" style="margin-left: 10px" Width="16px">*</asp:RequiredFieldValidator>
            <asp:Button ID="cmdShow" runat="server" Font-Bold="True" Font-Size="Large" 
                Height="57px"  style="margin-left: 15px" Text="Show" 
                Width="107px" CausesValidation="false" UseSubmitBehavior="false" />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="SID" DataSourceID="SqlDataSource1" 
                EmptyDataText="No Records Found..." GridLines="Horizontal" Height="16px" 
                style="text-align: center; margin-left: 168px;" Width="278px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="SID" HeaderText="SID" 
                        SortExpression="SID" ReadOnly="True" />
                    <asp:BoundField DataField="fullname" HeaderText="Full Name" 
                        SortExpression="fullname" />
                    <asp:BoundField DataField="sAadhar" HeaderText="Aadhar" 
                        SortExpression="sAadhar" />
                    <asp:BoundField DataField="address" HeaderText="Address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="phoneno" HeaderText="Phone no." 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="bankacc" HeaderText="Bank A/c" 
                        SortExpression="bankacc" />
                    <asp:BoundField DataField="ifsc" HeaderText="IFSC" SortExpression="ifsc" />
                    <asp:BoundField DataField="did" HeaderText="did" 
                        SortExpression="did" />
                    <asp:BoundField DataField="balAmt" HeaderText="balAmt" 
                        SortExpression="balAmt" />
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
                SelectCommand="SELECT * FROM supplierinfo where SID=?">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSID" DbType="Double" Name="?" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    </asp:Panel>
   
    
    </form>
</body>
</html>
