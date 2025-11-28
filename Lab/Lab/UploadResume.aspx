<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadResume.aspx.cs" Inherits="Lab.UploadResume" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Resume</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" /><br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>

