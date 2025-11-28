using System;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Database1_CRUD
{
    public partial class Database_DS : System.Web.UI.Page
    {
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue = txtName.Text;
            SqlDataSource1.InsertParameters["sem"].DefaultValue = txtSem.Text;
            SqlDataSource1.InsertParameters["city"].DefaultValue = txtCity.Text;
            SqlDataSource1.Insert();
        }
    }
}