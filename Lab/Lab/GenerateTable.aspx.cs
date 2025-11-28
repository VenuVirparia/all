using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class GenerateTable : System.Web.UI.Page
    {
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            int rows = int.Parse(ddlRows.SelectedValue);
            int cols = int.Parse(ddlCols.SelectedValue);
            Table tbl = new Table();

            for (int i = 0; i < rows; i++)
            {
                TableRow tr = new TableRow();
                for (int j = 0; j < cols; j++)
                {
                    TableCell tc = new TableCell();
                    LinkButton lb = new LinkButton();
                    lb.Text = $"Cell {i+1},{j+1}";
                    lb.Click += (s, ev) => { lb.Text = "Clicked!"; };
                    tc.Controls.Add(lb);
                    tr.Cells.Add(tc);
                }
                tbl.Rows.Add(tr);
            }
            phTable.Controls.Clear();
            phTable.Controls.Add(tbl);
        }
    }
}