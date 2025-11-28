<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationValidation.aspx.cs" Inherits="Lab.RegistrationValidation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form - All Validations</title>
</head>
<body>
<form id="form1" runat="server">
    <h2>Student Registration</h2>

    <!-- Name -->
    Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name required" ForeColor="Red" /><br /><br />

    <!-- Email -->
    Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
        ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+@\w+\.\w+" /><br /><br />

    <!-- Contact -->
    Contact No: <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact" 
        ErrorMessage="Enter 10-digit number" ForeColor="Red" ValidationExpression="^[0-9]{10}$" /><br /><br />

    <!-- Password -->
    Password: <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Password required" ForeColor="Red" /><br /><br />

    Confirm Password: <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="cvPass" runat="server" ControlToValidate="txtCPass" ControlToCompare="txtPass" 
        ErrorMessage="Passwords do not match" ForeColor="Red" /><br /><br />

    <!-- Password Strength Custom Validator -->
    <asp:CustomValidator ID="cvStrongPass" runat="server" ControlToValidate="txtPass" 
        OnServerValidate="cvStrongPass_ServerValidate" 
        ErrorMessage="Password must be ≥4 chars, contain 1 uppercase, 1 number, 1 special char" 
        ForeColor="Red" /><br /><br />

    <!-- Age Range -->
    Age: <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="60" 
        Type="Integer" ErrorMessage="Age must be between 18 and 60" ForeColor="Red" /><br /><br />

    <!-- Validation Summary -->
    <asp:ValidationSummary ID="vsSummary" runat="server" ForeColor="Red" HeaderText="Please fix the following:" />

    <br /><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <br /><br />
    <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
</form>
</body>
</html>
