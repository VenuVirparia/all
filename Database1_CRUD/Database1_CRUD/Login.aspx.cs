using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Database1_CRUD
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                string query = "SELECT * FROM Users WHERE Username=@uname AND Password=@pwd";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@uname", txtUser.Text.Trim());
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text.Trim());

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    lblMsg.Text = "Login Successful!";
                    dr.Close();

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                }
                else
                {
                    lblMsg.Text = "Invalid Username or Password!";
                }
            }
        }
    }

}