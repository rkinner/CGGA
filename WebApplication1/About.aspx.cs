using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string fName = Request.Form["first_name"];
                string lName = Request.Form["last_name"];
                string email = Request.Form["user_email"];

                

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // When the button is clicked,
            // change the button text, and disable it.

            Button clickedButton = (Button)sender;
            clickedButton.Text = "Submitted";
            clickedButton.Enabled = false;

            // Display the greeting label text.
            GreetingLabel.Visible = true;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}