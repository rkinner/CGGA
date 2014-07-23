using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Schedule : System.Web.UI.Page
    {
        List<teetime> bookedTeeTimes = new List<teetime>();
        DateTime date;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                date = Convert.ToDateTime(Request.Form["date"]);
                WebApplication1.File.ReadBooking(bookedTeeTimes, date);

               foreach (teetime t in bookedTeeTimes.Where(tt => (tt.time.Date == date)).OrderBy(tt => tt.time))
               {
                   TableRow tRow = new TableRow();
                   Table1.Rows.Add(tRow);
                   TableCell cell1 = new TableCell();
                   tRow.Cells.Add(cell1);
                   TableCell cell2 = new TableCell();
                   tRow.Cells.Add(cell2);
                   TableCell cell3 = new TableCell();
                   tRow.Cells.Add(cell3);
                   TableCell cell4 = new TableCell();
                   tRow.Cells.Add(cell4);

                   cell1.Text = t.time.ToString();
                   cell2.Text = t.numGuests.ToString();
                   cell3.Text = t.booker.firstName.ToString() + " " + t.booker.lastName.ToString();
                   cell4.Text = t.booker.email.ToString();
               }

               
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
            Table1.Visible = true;
        }

    }
}