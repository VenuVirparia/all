using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Database1_CRUD
{
    public partial class CRUD_ADO : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindGrid();
        }
        void BindGrid()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Student", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        // INSERT
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Student (Name, City) VALUES (@Name, @City)", con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);

            con.Open(); cmd.ExecuteNonQuery(); con.Close();
            txtName.Text = ""; txtCity.Text = ""; // clear
            BindGrid();
        }

        // EDIT
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        // UPDATE
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int roll = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;

            SqlCommand cmd = new SqlCommand("UPDATE Student SET Name=@Name, City=@City WHERE RollNo=@RollNo", con);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@RollNo", roll);

            con.Open(); cmd.ExecuteNonQuery(); con.Close();
            GridView1.EditIndex = -1;
            BindGrid();
        }

        // CANCEL
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        // DELETE
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int roll = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("DELETE FROM Student WHERE RollNo=@RollNo", con);
            cmd.Parameters.AddWithValue("@RollNo", roll);

            con.Open(); cmd.ExecuteNonQuery(); con.Close();
            BindGrid();
        }
    }
}
