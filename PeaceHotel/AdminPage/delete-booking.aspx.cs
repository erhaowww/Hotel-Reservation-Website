using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class delete_booking : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        public int bookingId2;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["bookingId"] != null)
            {
                bookingId2 = int.Parse(Request.QueryString["bookingId"] ?? "");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Booking booking = _db.Bookings.SingleOrDefault(x => x.BookingId == bookingId2);
            if (booking != null)
            {
                //room.roomId = rId;
                booking.deleted = 1;

                _db.SaveChanges();
            }
            Response.Redirect("all-booking.aspx");
        }
    }
}