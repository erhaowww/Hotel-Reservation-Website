using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage.MasterPage
{
    public partial class NavSearch : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String checkIn = Request["checkInDate"];
            String checkOut = Request["checkOutDate"];
            Response.Redirect("./Rooms.aspx?roomType=" + RoomTypeList.Text + "&checkIn=" + checkIn + "&checkOut=" + checkOut);
        }
    }
}