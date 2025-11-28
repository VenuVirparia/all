using System;


namespace Lab
{

    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                lblUsername.Text = Session["username"].ToString();
                txtBirthdate.Text = Session["birthdate"].ToString();
            }
        }

        protected void btnUpdateBirthdate_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string newBirthdate = txtBirthdate.Text.Trim();

            Session["birthdate"] = newBirthdate;
            Login.Users[username] = (Session["password"].ToString(), newBirthdate);

            lblMessage.Text = "Birthdate updated successfully!";
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string newPassword = txtNewPassword.Text.Trim();

            if (!string.IsNullOrEmpty(newPassword))
            {
                var currentBirthdate = Session["birthdate"].ToString();
                Login.Users[username] = (newPassword, currentBirthdate);

                Session["password"] = newPassword;

                lblMessage.Text = "Password changed successfully!";
                txtNewPassword.Text = ""; 
            }
            else
            {
                lblMessage.Text = "Password cannot be empty!";
            }
        }


        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon(); // Destroy session
            Response.Redirect("Login.aspx");
        }
    }


}