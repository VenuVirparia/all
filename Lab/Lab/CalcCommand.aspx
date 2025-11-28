<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalcCommand.aspx.cs" Inherits="Lab.CalcCommand" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator Cmd</title>
    <style>
        .container { width: 300px; margin: 20px auto; }
        .tb { width: 100%; margin-bottom: 10px; }
        .btn { width: 65px; margin: 2px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:TextBox ID="tb1" runat="server" CssClass="tb"></asp:TextBox>
            <asp:TextBox ID="tb2" runat="server" CssClass="tb" AutoPostBack="true" OnTextChanged="tb2_TextChanged"></asp:TextBox>
            <asp:Button Text="Add" CommandName="Calc" CommandArgument="Add" OnCommand="Calc_Command" CssClass="btn" runat="server" />
            <asp:Button Text="Sub" CommandName="Calc" CommandArgument="Sub" OnCommand="Calc_Command" CssClass="btn" runat="server" />
            <asp:Button Text="Mul" CommandName="Calc" CommandArgument="Mul" OnCommand="Calc_Command" CssClass="btn" runat="server" />
            <asp:Button ID="btnDiv" Text="Div" CommandName="Calc" CommandArgument="Div" OnCommand="Calc_Command" CssClass="btn" runat="server" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

