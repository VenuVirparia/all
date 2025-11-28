<%@ Page Language = "C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Lab.EditProfile" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Edit Profile</h2>
            <p>This is the edit profile page. You can make changes here.</p>
            <asp:Button ID = "btnBack" runat="server" Text="Go back to Welcome" OnClick="Back_Click" />
        </div>
    </form>
</body>
</html>