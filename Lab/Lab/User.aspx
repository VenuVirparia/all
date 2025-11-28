<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Lab.User" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Place Your Order</h2>
        <asp:CheckBoxList ID="chkItems" runat="server">
            <asp:ListItem>Pen</asp:ListItem>
            <asp:ListItem>Pencil</asp:ListItem>
            <asp:ListItem>Eraser</asp:ListItem>
            <asp:ListItem>Notebook</asp:ListItem>
        </asp:CheckBoxList>
        <br /><br />
        <asp:TextBox ID="txtUserName" runat="server" Placeholder="Enter Your Name"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
    </form>
</body>
</html>
