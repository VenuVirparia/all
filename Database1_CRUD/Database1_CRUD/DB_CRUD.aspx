<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DB_CRUD.aspx.cs" Inherits="Database1_CRUD.DB_CRUD" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student CRUD with GridView</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Student CRUD (ADO.NET)</h2>

        Name: <asp:TextBox ID="txtName" runat="server" /><br />
        Semester: <asp:TextBox ID="txtSem" runat="server" /><br />
        City: <asp:TextBox ID="txtCity" runat="server" /><br /><br />

        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /><br /><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="name"
            OnRowEditing="GridView1_RowEditing"
            OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowUpdating="GridView1_RowUpdating"
            OnRowDeleting="GridView1_RowDeleting">

            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="true" />
                <asp:BoundField DataField="sem" HeaderText="Semester" />
                <asp:BoundField DataField="city" HeaderText="City" />

                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
