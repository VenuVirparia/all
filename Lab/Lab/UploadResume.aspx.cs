using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class UploadResume : System.Web.UI.Page
    {
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if ((ext == ".pdf" || ext == ".docx") || FileUpload1.PostedFile.ContentLength < 20240)
                {
                   // FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                    lblMsg.Text = "Uploaded successfully!";
                }
                else
                {
                    lblMsg.Text = "Invalid file or size too large.";
                }
            }
            else lblMsg.Text = "Please select a file.";
        }
    }
}