using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Caching;
using System.Web.UI.WebControls;
namespace Database1_CRUD
{
   

    public partial class SqlCacheDependency : System.Web.UI.Page
    {
        string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            DataTable dt = Cache["StudentData"] as DataTable;

            if (dt == null)
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("SELECT RollNo, Name, City FROM Student", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    da.Fill(dt);

                    // Create a CacheDependency linked to table using the database name from web.config
                    CacheDependency dep = new SqlCacheDependency("StudentDB", "Student");

                    // Insert data into cache with dependency
                    Cache.Insert("StudentData", dt, dep, DateTime.Now.AddMinutes(10), Cache.NoSlidingExpiration);
                }
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            BindGrid();
        }
    }

}
