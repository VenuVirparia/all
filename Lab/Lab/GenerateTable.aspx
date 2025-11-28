<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateTable.aspx.cs" Inherits="Lab.GenerateTable" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic Table</title>
    <style>
        .container { width: 400px; margin: 20px auto; }
        table, td { border: 1px solid black; border-collapse: collapse; padding: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            Rows: <asp:DropDownList ID="ddlRows" runat="server">
                <asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            Columns: <asp:DropDownList ID="ddlCols" runat="server">
                <asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnGenerate" runat="server" Text="Generate Table" OnClick="btnGenerate_Click" /><br /><br />
            <asp:PlaceHolder ID="phTable" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>

