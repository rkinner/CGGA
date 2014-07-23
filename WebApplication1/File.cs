using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class File
    {
        public static void SaveBooking(teetime tt)
        {
            string filePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "//bookings.txt";
            using (System.IO.FileStream bookingStream = new System.IO.FileStream(filePath, System.IO.FileMode.Append, FileAccess.Write))
            {
                StreamWriter writer = new StreamWriter(bookingStream);
                string linen = string.Format("{0}\t{1}\t{2}\t{3}\t{4}", tt.time, tt.booker.firstName, tt.booker.lastName, tt.booker.email, tt.numGuests);
                writer.WriteLine(linen);

                writer.Close();
            }
        }

        public static void SendEmail()
        {

        }
    }
}