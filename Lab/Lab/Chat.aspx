<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Lab.Chat" %>


<!DOCTYPE html>
<html>
<head>
    <title>Simple Chat</title>
</head>
<body>
    <form runat="server">
        Username: <asp:TextBox ID="txtUser" runat="server" /><br />
        Message: <asp:TextBox ID="txtMsg" runat="server" Width="300" /><br />
        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /><br /><br />
        <asp:TextBox ID="txtChat" runat="server" TextMode="MultiLine" Width="400" Height="200" ReadOnly="true"></asp:TextBox>
    </form>
</body>
</html>
