using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Table1.Rows[1].Cells[1].Text = "$90";
            Table1.Rows[1].Cells[2].Text = "$100";

            Table1.Rows[2].Cells[1].Text = "$80";
            Table1.Rows[2].Cells[2].Text = "$90";

            Table1.Rows[3].Cells[1].Text = "$70";
            Table1.Rows[3].Cells[2].Text = "$80";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (Dates.SelectedIndex == 0)
            {
                Table1.Rows[1].Cells[1].Text = "$90";
                Table1.Rows[1].Cells[2].Text = "$100";

                Table1.Rows[2].Cells[1].Text = "$80";
                Table1.Rows[2].Cells[2].Text = "$90";

                Table1.Rows[3].Cells[1].Text = "$70";
                Table1.Rows[3].Cells[2].Text = "$80";
            }
            if (Dates.SelectedIndex == 1)
            {
                Table1.Rows[1].Cells[1].Text = "$70";
                Table1.Rows[1].Cells[2].Text = "$80";

                Table1.Rows[2].Cells[1].Text = "$60";
                Table1.Rows[2].Cells[2].Text = "$70";

                Table1.Rows[3].Cells[1].Text = "$50";
                Table1.Rows[3].Cells[2].Text = "$60";
            }
            if (Dates.SelectedIndex == 2)
            {
                Table1.Rows[1].Cells[1].Text = "$80";
                Table1.Rows[1].Cells[2].Text = "$90";

                Table1.Rows[2].Cells[1].Text = "$70";
                Table1.Rows[2].Cells[2].Text = "$80";

                Table1.Rows[3].Cells[1].Text = "$60";
                Table1.Rows[3].Cells[2].Text = "$70";
            }
        }
    }
}