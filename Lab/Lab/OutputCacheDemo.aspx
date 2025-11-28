<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OutputCacheDemo.aspx.cs" Inherits="Lab.OutputCacheDemo" %>
<%@ OutputCache Duration="15" VaryByParam="none" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Output Cache Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Output Cache Demo</h1>
            <p><strong>Server Time:</strong> <asp:Label ID="lblServerTime" runat="server"></asp:Label></p>
            <p><strong>Client Time:</strong> <span id="clientTime"></span></p>
        </div>
    </form>
    <script>
        function updateClientTime() {
            var now = new Date();
            document.getElementById('clientTime').innerText = now.toLocaleTimeString();
        }
        updateClientTime();
    </script>
</body>
</html>