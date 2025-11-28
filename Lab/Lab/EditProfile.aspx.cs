using System;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Lab
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAuthenticated"] == null || !(bool)Session["IsAuthenticated"])
            {
                Response.Redirect("SessionLogin.aspx");
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Server.Transfer("Welcome.aspx");
        }
    }
}


