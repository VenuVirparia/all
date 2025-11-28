using System;
using System.Web.UI;
namespace Lab
{
    public partial class SessionLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            if (txtUsername.Text == "user" && txtPassword.Text == "pass")
            {
                Session["IsAuthenticated"] = true;
                Session["Username"] = txtUsername.Text;

                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid credentials. Please try again.";
            }
        }
    }
}