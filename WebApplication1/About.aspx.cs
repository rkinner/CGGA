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
        DateTime startTime = Convert.ToDateTime("7:30 AM");
        DateTime endTime = Convert.ToDateTime("7:30 PM");
        List<DateTime> allTeeTimes = new List<DateTime>();
        //List<DateTime> bookedTeeTimes = new List<DateTime>();
        //List<DateTime> earlyTeeTimes = new List<DateTime>();
        //List<DateTime> midTeeTimes = new List<DateTime>();
        //List<DateTime> lateTeeTimes = new List<DateTime>();


        List<customer> allCustomers = new List<customer>();
        List<teetime> bookedTeeTimes = new List<teetime>();

        public About()
            : base()
        {
            DateTime time = startTime;
            while (time <= endTime)
            {
                allTeeTimes.Add(time);
                time = time.AddMinutes(8);
            }

            // TODO:  populate BookedTeeTimes with file
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (ListItem li in allTeeTimes//.Where(tt => tt.TimeOfDay )
                    .Select(tt => new ListItem(tt.TimeOfDay.ToString(), tt.ToShortTimeString())))
                    DropDownList2.Items.Add(li);

            }

            if (IsPostBack)
            {
                customer newCustomer = new customer();
                newCustomer.firstName = Request.Form["first_name"];
                newCustomer.lastName = Request.Form["last_name"];
                newCustomer.email = Request.Form["user_email"];
                if (!allCustomers.Contains(newCustomer))
                    allCustomers.Add(newCustomer);

                DateTime date = Convert.ToDateTime(Request.Form["date"]);
                DateTime time = Convert.ToDateTime(DropDownList2.SelectedItem.Value);

                teetime booking = new teetime();
                booking.booker = newCustomer;
                booking.time = new DateTime(date.Year, date.Month, date.Day, time.Hour, time.Minute, time.Second);

                booking.numGuests = int.Parse(NoGuests.SelectedItem.Value);
                
                WebApplication1.File.SaveBooking(booking);

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DateTime? start = null;
            DateTime? end = null;

            switch (((DropDownList)sender).SelectedIndex)
            {
                case 0:
                    start = Convert.ToDateTime("7:30 AM");
                    end = Convert.ToDateTime("10:00 AM");
                    break;
                case 1:
                    start = Convert.ToDateTime("10:00 AM");
                    end = Convert.ToDateTime("2:00 PM");
                    break;
                case 2:
                    start = Convert.ToDateTime("2:00 PM");
                    end = Convert.ToDateTime("7:30 PM");
                    break;
            }

            DropDownList2.DataSource = allTeeTimes.Where(tt => start <= tt && tt <= end);
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