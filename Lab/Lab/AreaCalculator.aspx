<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AreaCalculator.aspx.cs" Inherits="Lab.AreaCalculator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rectangle Area Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculate Rectangle Area</h2>
            Height:
            <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox><br /><br />
            Width:
            <asp:TextBox ID="txtWidth" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Area" OnClick="btnCalculate_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>