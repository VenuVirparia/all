using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class Calc : System.Web.UI.Page
    {
        protected void tb2_TextChanged(object sender, EventArgs e)
        {
            if (tb2.Text == "0")
            {
                tb2.BackColor = System.Drawing.Color.Red;
                btnDiv.Enabled = false;
            }
            else
            {
                tb2.BackColor = System.Drawing.Color.White;
                btnDiv.Enabled = true;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblResult.Text = (Convert.ToDouble(tb1.Text) + Convert.ToDouble(tb2.Text)).ToString();
        }
        protected void btnSub_Click(object sender, EventArgs e)
        {
            lblResult.Text = (Convert.ToDouble(tb1.Text) - Convert.ToDouble(tb2.Text)).ToString();
        }
        protected void btnMul_Click(object sender, EventArgs e)
        {
            lblResult.Text = (Convert.ToDouble(tb1.Text) * Convert.ToDouble(tb2.Text)).ToString();
        }
        protected void btnDiv_Click(object sender, EventArgs e)
        {
            lblResult.Text = (Convert.ToDouble(tb1.Text) / Convert.ToDouble(tb2.Text)).ToString();
        }
    }
}