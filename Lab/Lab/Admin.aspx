<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Lab.Admin" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>All Orders</h2>
        <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve Orders" OnClick="btnRetrieve_Click" />
        <br /><br />
        <asp:TextBox ID="txtOrders" runat="server" TextMode="MultiLine" Rows="10" Columns="50" ReadOnly="true"></asp:TextBox>
    </form>
</body>
</html>

