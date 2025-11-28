<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Lab.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style>
        .container { width: 400px; margin: 20px auto; }
        .row { margin-bottom: 8px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox></div>
            <div class="row">Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
            <div class="row">Address: <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></div>
            <div class="row">Contact No: <asp:TextBox ID="txtContact" runat="server"></asp:TextBox></div>
            <div class="row">Country: <asp:DropDownList ID="ddlCountry" runat="server"><asp:ListItem>India</asp:ListItem><asp:ListItem>USA</asp:ListItem></asp:DropDownList></div>
            <div class="row">State: <asp:TextBox ID="txtState" runat="server"></asp:TextBox></div>
            <div class="row">City: <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></div>
            <div class="row">Gender: 
                <asp:RadioButtonList ID="rblGender" runat="server"><asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem></asp:RadioButtonList>
            </div>
            <div class="row">Certificates: 
                <asp:CheckBoxList ID="cblCerts" runat="server">
                    <asp:ListItem>IELTS</asp:ListItem><asp:ListItem>GRE</asp:ListItem><asp:ListItem>NCAT</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="row">Password: <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></div>
            <div class="row">Confirm Password: <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox></div>
            <div class="row">DOB: <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox></div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br /><br />
            
            <asp:Label ID="lblDetails" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
