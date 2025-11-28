using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class CalcCommand : System.Web.UI.Page
    {
        protected void tb2_TextChanged(object sender, EventArgs e)
        {
            btnDiv.Enabled = tb2.Text != "0";
            tb2.BackColor = tb2.Text == "0" ? System.Drawing.Color.Red : System.Drawing.Color.White;
        }

        protected void Calc_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            double a = Convert.ToDouble(tb1.Text);
            double b = Convert.ToDouble(tb2.Text);

            switch (e.CommandArgument.ToString())
            {
                case "Add": lblResult.Text = (a + b).ToString(); break;
                case "Sub": lblResult.Text = (a - b).ToString(); break;
                case "Mul": lblResult.Text = (a * b).ToString(); break;
                case "Div": lblResult.Text = (a / b).ToString(); break;
            }
        }
    }
}