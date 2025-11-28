using System;
using System.Web.UI;

namespace Database1_CRUD
{
    public partial class CRUD_DS : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = txtName.Text;
            SqlDataSource1.InsertParameters["City"].DefaultValue = txtCity.Text;
            SqlDataSource1.Insert();

            txtName.Text = "";
            txtCity.Text = "";
        }
    }
}
