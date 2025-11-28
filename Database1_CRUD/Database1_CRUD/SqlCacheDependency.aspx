<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlCacheDependency.aspx.cs" Inherits="Database1_CRUD.SqlCacheDependency" %>

<html>
<body>
    <form runat="server">
        <h2>Student List with SQL Cache Dependency</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
        <br />
        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
    </form>
</body>
</html>

