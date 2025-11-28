using System;

namespace Lab
{
    public partial class _About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dept = Request.QueryString["dept"];
                if (!string.IsNullOrEmpty(dept))
                {
                    lblMessage.Text = $"Welcome to {dept} of DDU";
                }
                else
                {
                    Response.Redirect("~/");

                }
            }
        }
    }
}
