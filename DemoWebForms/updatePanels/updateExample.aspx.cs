using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms.updatePanels
{
    public partial class updateExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //throw new ApplicationException("Error occurred");
            TimeLabel.Text = DateTime.Now.ToShortTimeString();
        }
    }
}