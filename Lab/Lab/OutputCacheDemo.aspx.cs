using System;

namespace Lab
{
    public partial class OutputCacheDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the server time on the label
            lblServerTime.Text = DateTime.Now.ToString("h:mm:ss tt");
        }
    }
}