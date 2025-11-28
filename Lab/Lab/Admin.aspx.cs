
using System;
using System.Collections.Generic;

namespace Lab
{

    public partial class Admin : System.Web.UI.Page
    {
        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            txtOrders.Text = ""; // Clear previous content

            if (Application["Orders"] != null)
            {
                List<string> orders = (List<string>)Application["Orders"];
                foreach (string order in orders)
                {
                    txtOrders.Text += order + Environment.NewLine;
                }
            }
            else
            {
                txtOrders.Text = "No orders placed yet.";
            }
        }
    }

}