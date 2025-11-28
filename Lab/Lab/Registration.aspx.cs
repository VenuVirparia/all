using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string certs = string.Join(", ", cblCerts.Items.Cast<System.Web.UI.WebControls.ListItem>().Where(i => i.Selected).Select(i => i.Text));
            lblDetails.Text = $"<h2>Submitted Details</h2><br/>Name: {txtName.Text}<br/>Email: {txtEmail.Text}<br/>Address: {txtAddress.Text}<br/>Contact: {txtContact.Text}" +
                              $"<br/>Country: {ddlCountry.SelectedValue}<br/>State: {txtState.Text}<br/>City: {txtCity.Text}" +
                              $"<br/>Gender: {rblGender.SelectedValue}<br/>Certificates: {certs}" +
                              $"<br/>DOB: {txtDOB.Text}";
        }
    }
}