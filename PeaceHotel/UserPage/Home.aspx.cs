using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkInDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                String checkIn = Request["checkInDate"];
                String checkOut = Request["checkOutDate"];
                DateTime iDate = Convert.ToDateTime(checkIn);
                DateTime oDate = Convert.ToDateTime(checkOut);
                if (iDate >= oDate)
                {
                    Response.Redirect("./Home.aspx");
                }
                else
                {
                    Response.Redirect("./Rooms.aspx?roomType=" + RoomTypeList.Text + "&checkIn=" + checkIn + "&checkOut=" + checkOut);

                }
            }
            catch (Exception ex) { }
            Response.Redirect("./Rooms.aspx?roomType=" + RoomTypeList.Text);
        }
        protected void accBtnCliked(object sender, EventArgs e)
        {
            Response.Redirect("Profile/UserProfile.aspx");
        }
    }
}