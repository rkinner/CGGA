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
        List<customer> allCustomers = new List<customer>();
        List<teetime> bookedTeeTimes = new List<teetime>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                customer newCustomer = new customer();
                newCustomer.firstName = Request.Form["first_name"];
                newCustomer.lastName = Request.Form["last_name"];
                newCustomer.email = Request.Form["user_email"];
                if (!allCustomers.Contains(newCustomer))
                    allCustomers.Add(newCustomer);

                teetime booking = new teetime();
                
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
    public class customer
    {
        //attributes
        public string firstName;
        public string lastName;
        public string email;

    }

    public class teetime
    {
        //attributes
        public DateTime time;
        public customer booker;
        public int numGuests;
    }
}