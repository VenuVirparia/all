using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class ImageMapDemo : System.Web.UI.Page
    {
        protected void ImageMap1_Click(object sender, System.Web.UI.WebControls.ImageMapEventArgs e)
        {
            lblResult.Text = $"You clicked on: {e.PostBackValue}";
        }
    }
}