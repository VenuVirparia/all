<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Lab.Welcome" %>


<html>
<body>
    <form runat="server">
        <h2>Welcome, <asp:Label ID="lblUsername" runat="server"></asp:Label></h2>
        
        <h3>Edit Birthdate</h3>
        Birthdate: <asp:TextBox ID="txtBirthdate" runat="server"></asp:TextBox>
        <asp:Button ID="btnUpdateBirthdate" runat="server" Text="Update" OnClick="btnUpdateBirthdate_Click" /><br /><br />

        <h3>Change Password</h3>
        New Password: <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" /><br /><br />

        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /><br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
    </form>
</body>
</html>
