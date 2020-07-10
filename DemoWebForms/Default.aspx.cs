using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TextBox1.Text = "Load";
            //if (!IsPostBack) 
            //{ 
            //    Response.Write("Page Loaded for the first time");
            //}
        }

        protected void dropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(dropDownList1.SelectedValue == "-1")
            {
                AdminActionsLabel.Visible = false;
                AdminNameLabel.Visible = false;
            }
        }
    }
}
