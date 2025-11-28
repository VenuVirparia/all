using System;
using System.Collections.Generic;

namespace Lab
{
   

    public partial class User : System.Web.UI.Page
    {
        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            string userName = txtUserName.Text.Trim();
            if (string.IsNullOrEmpty(userName))
            {
                lblMessage.Text = "Please enter your name!";
                return;
            }

            List<string> selectedItems = new List<string>();
            foreach (var item in chkItems.Items)
            {
                var listItem = (System.Web.UI.WebControls.ListItem)item;
                if (listItem.Selected)
                    selectedItems.Add(listItem.Text);
            }

            if (selectedItems.Count == 0)
            {
                lblMessage.Text = "Please select at least one item!";
                return;
            }

            string order = $"{userName}: {string.Join(", ", selectedItems)}";

            // Store order in Application State
            if (Application["Orders"] == null)
                Application["Orders"] = new List<string>();

            Application.Lock();
            ((List<string>)Application["Orders"]).Add(order);
            Application.UnLock();

            lblMessage.Text = "Order placed successfully!";
        }
    }

}