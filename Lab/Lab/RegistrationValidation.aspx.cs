using System;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace Lab
{
    public partial class RegistrationValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cvStrongPass_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            string password = args.Value;
            bool isStrong = password.Length >=4  &&
                            Regex.IsMatch(password, "[A-Z]") &&    // At least 1 uppercase
                            Regex.IsMatch(password, "[0-9]") &&    // At least 1 digit
                            Regex.IsMatch(password, "[^a-zA-Z0-9]"); // At least 1 special char

            args.IsValid = isStrong;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblResult.Text = $"Registration Successful! Welcome {txtName.Text}";
            }
            else
                lblResult.Visible = false;
        }
    }
}
