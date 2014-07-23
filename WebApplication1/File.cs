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

        public static void ReadBooking(List<teetime> booked, DateTime date)
        {
            string filePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "//bookings.txt";
            using (System.IO.FileStream bookingStream = new System.IO.FileStream(filePath, FileMode.Open, FileAccess.Read))
            {
                using (StreamReader reader = new StreamReader(bookingStream))
                {

                    String line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        string[] read = line.Split('\t');
                        teetime booking = new teetime() { time = Convert.ToDateTime(read[0]), booker = new customer() { firstName = (read[1]), lastName = (read[2]), email = (read[3]) }, numGuests = int.Parse(read[4]) };
                        booked.Add(booking);
                    }
                }
            }
        }
    }
}