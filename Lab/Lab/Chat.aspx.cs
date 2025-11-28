using System;
using System.Web.UI;

namespace Lab
{
    public partial class Chat : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Chat"] != null)
                txtChat.Text = Application["Chat"].ToString();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Session["User"] = txtUser.Text;  // store user in session
            string user = Session["User"].ToString();
            string msg = txtMsg.Text;

            Application["Chat"] += user + ": " + msg + Environment.NewLine;
            txtChat.Text = Application["Chat"].ToString();
            txtMsg.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Session.Clear();          // clear session
            Application["Chat"] = ""; // clear global chat
            txtChat.Text = "";
        }
    }
}
