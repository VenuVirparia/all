<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD_ADO.aspx.cs" Inherits="Database1_CRUD.CRUD_ADO" %>
<!DOCTYPE html>
<html>
<head><title>ADO.NET CRUD</title></head>
<body>
<form runat="server">
    <h2>Student CRUD ADO.NET</h2>
    Name: <asp:TextBox ID="txtName" runat="server" />  
    City: <asp:TextBox ID="txtCity" runat="server" />  
    <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />  
    <br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting" DataKeyNames="RollNo">
        <Columns>
            <asp:BoundField DataField="RollNo" HeaderText="Roll No" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</form>
</body>
</html>
