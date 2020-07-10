using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void txtun_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtun.Text))
            {
                SqlConnection con = new SqlConnection("Data Source=HP-350-G2;Initial Catalog=Login;User ID=;Password=");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from User where UserName=@un", con);
                cmd.Parameters.AddWithValue("@un", txtun.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    checkun.Visible = true;
                    shwimg.ImageUrl = "Cancel.png";
                    lblmsg.Text = "UserName Already Exist..!!";
                }
                else
                {
                    checkun.Visible = true;
                    shwimg.ImageUrl = "Accepted.png";
                    lblmsg.Text = "Congratulation created Successfully..!!";
                }
            }
            else
            {
                checkun.Visible = false;
            }
        }
    }
}