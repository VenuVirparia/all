using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class CustomCalendar : System.Web.UI.Page
    {

        DateTime[] holidays = { new DateTime(2025, 8, 15), new DateTime(2025, 8, 28) };
        DateTime sessionalExam = new DateTime(2025, 8, 5);
        DateTime externalExam = new DateTime(2025, 8, 20);

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (Array.Exists(holidays, h => h.Date == e.Day.Date))
            {
                e.Cell.CssClass = "holiday";
            }
            if (e.Day.IsWeekend)
            {
                e.Cell.CssClass = "weekend";
            }
            if (e.Day.IsOtherMonth)
            {
                e.Cell.ForeColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
            if (e.Day.Date == DateTime.Today)
            {
                e.Cell.BackColor = System.Drawing.Color.LightGreen;
            }

            DateTime sessionalStart = sessionalExam.AddDays(-(int)sessionalExam.DayOfWeek);
            DateTime sessionalEnd = sessionalStart.AddDays(6);
            if (e.Day.Date >= sessionalStart && e.Day.Date <= sessionalEnd)
            {
                e.Cell.CssClass = "sessional";
            }

            DateTime externalStart = externalExam.AddDays(-(int)externalExam.DayOfWeek);
            DateTime externalEnd = externalStart.AddDays(6);
            if (e.Day.Date >= externalStart && e.Day.Date <= externalEnd)
            {
                e.Cell.CssClass = "external";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            int daysLeft = (new DateTime(DateTime.Today.Year, 8, 15) - DateTime.Today).Days;
            lblInfo.Text = $"Days left for 15th August: {daysLeft}";
        }
    }

}