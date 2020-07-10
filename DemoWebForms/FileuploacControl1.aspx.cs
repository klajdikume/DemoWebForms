using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class FileuploacControl1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //UpdatePanel converts normal postback operations into async postbacks using XmlHTtpRequest
        //controls in the template as well as viewstate are sent to the server
        //response message data os automatically updated in the page
        //no js is required out of the box

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if(fileExtension.ToLower() != ".doc" || fileExtension.ToLower() != ".docx" || fileExtension.ToLower() != ".pdf")
                {
                    lblMessage.Text = "Please select a with doc or docx extension";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    if(fileSize > 2097152)
                    {
                        lblMessage.Text = "Maximum file size (2Mb) exceeded";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        lblMessage.Text = "Filed Uploaded";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    
                }

                
            }
            else
            {
                lblMessage.Text = "Please select a file";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}