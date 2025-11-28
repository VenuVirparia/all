<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD_DAL.aspx.cs" Inherits="Database1_CRUD.CRUD_DAL" %>


<html>
<head runat="server">
    <title>Student Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Add New Student</h3>

            <label for="txtName">Name:</label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />

            <label for="txtCity">City:</label><br />
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnAddStudent" runat="server" Text="Add Student" OnClick="btnAddStudent_Click" />
            <br />
            <asp:Label ID="lblStatus" runat="server" ForeColor="Green"></asp:Label>

            <hr />
            
            <asp:ObjectDataSource ID="StudentDataSource" runat="server"
                TypeName="YourNamespace.Student_DAL"
                SelectMethod="GetAllStudents"
                InsertMethod="AddStudent"
                UpdateMethod="UpdateStudent"
                DeleteMethod="DeleteStudent">
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                </InsertParameters>
                 <UpdateParameters>
                    <asp:Parameter Name="rollNo" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                </UpdateParameters>
                <DeleteParameters>
                    <asp:Parameter Name="rollNo" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>

            <asp:GridView ID="GridView1" runat="server"
                DataSourceID="StudentDataSource"
                DataKeyNames="RollNo"
                AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Student Name" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>