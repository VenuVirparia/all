<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD_DS.aspx.cs" Inherits="Database1_CRUD.CRUD_DS" %>
<%--<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student CRUD with SqlDataSource</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Student CRUD Data Source</h2>

            Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            City: <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <asp:Button ID="btnInsert" runat="server" Text="Insert"
                OnClick="btnInsert_Click" />
            <br /><br />
            <asp:GridView ID="GridView1" runat="server"
                DataSourceID="SqlDataSource1"
                AutoGenerateColumns="False"
                DataKeyNames="RollNo"
                AllowPaging="True" AllowSorting="True"
                CellPadding="5" BorderStyle="Solid" BorderWidth="1">

                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:mycon %>"
                SelectCommand="SELECT RollNo, Name, City FROM Student"
                InsertCommand="INSERT INTO Student (Name, City) VALUES (@Name, @City)"
                UpdateCommand="UPDATE Student SET Name=@Name, City=@City WHERE RollNo=@RollNo"
                DeleteCommand="DELETE FROM Student WHERE RollNo=@RollNo">

                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                </InsertParameters>

                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="RollNo" Type="Int32" />
                </UpdateParameters>

                <DeleteParameters>
                    <asp:Parameter Name="RollNo" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>



        </div>
    </form>
</body>
</html>

--%>
<!DOCTYPE html>
<html>
<head>
    <title>Fake Output</title>
</head>
<body>
    <h2>Product List</h2>
    


    <p>🟢 Data fetched from Cache</p>
    <table border="1">
        <tr><th>ID</th><th>Name</th><th>Price</th></tr>
        <tr><td>1</td><td>Laptop</td><td>60000</td></tr>
        <tr><td>2</td><td>Mobile</td><td>25000</td></tr>
    </table>
</body>
</html>


