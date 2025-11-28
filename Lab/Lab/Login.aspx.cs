using System;
using System.Collections.Generic;


namespace Lab
{
   
    public partial class Login : System.Web.UI.Page
    {
        public static Dictionary<string, (string Password, string Birthdate)> Users =
            new Dictionary<string, (string, string)>()
        {
        {"user1", ("pass1", "01-01-2000")},
        {"user2", ("pass2", "15-05-1995")}
        };

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (Users.ContainsKey(username) && Users[username].Password == password)
            {
                // Store user info in session
                Session["username"] = username;
                Session["password"] = password;
                Session["birthdate"] = Users[username].Birthdate;

                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password!";
            }
        }
    }

}