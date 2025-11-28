<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Lab.Calc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        .container { width: 300px; margin: 20px auto; }
        .tb { width: 100%; margin-bottom: 10px; }
        .btn { width: 65px; margin: 2px; }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <asp:TextBox ID="tb1" runat="server" CssClass="tb"></asp:TextBox>
            <asp:TextBox ID="tb2" runat="server" CssClass="tb" AutoPostBack="true" OnTextChanged="tb2_TextChanged"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSub" runat="server" Text="Sub" CssClass="btn" OnClick="btnSub_Click" />
            <asp:Button ID="btnMul" runat="server" Text="Mul" CssClass="btn" OnClick="btnMul_Click" />
            <asp:Button ID="btnDiv" runat="server" Text="Div" CssClass="btn" OnClick="btnDiv_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
