using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage
{
    public partial class confirm_booking : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 
                DateTime checkIn = Convert.ToDateTime(Request.QueryString["checkIn"]);
                DateTime checkOut = Convert.ToDateTime(Request.QueryString["checkOut"]);
                Label3.Text = Request.QueryString["checkIn"].ToString();
                Label2.Text = Request.QueryString["checkOut"].ToString();
            }
            catch (Exception ex){ }
            int roomId = Convert.ToInt32(Request.QueryString["room"]);
            var comic = from Room in _db.Rooms
                        where Room.roomId == roomId
                        select Room;

            if (comic != null)
            {
                foreach (var n in comic)
                {
                    Label1.Text = n.roomName;
                    savePrice.Value = n.roomPrice.ToString();
                    cashRate.InnerText = n.roomPrice.ToString();
                    double calTax = (double)(n.roomPrice * 0.06);
                    total = (double)(n.roomPrice + calTax);
                    tax.InnerText = calTax.ToString();
                    totalStay.InnerText = total.ToString();
                    totalPrice.InnerText = "RM "+total.ToString();
                }
                    
            }

                

        }

        protected void Reservation_Click(object sender, EventArgs e)
        {
            int roomId = Convert.ToInt32(Request.QueryString["room"]);
            Booking booking = new Booking();
            Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            Models.Room room = _db.Rooms.SingleOrDefault(x => x.roomId == roomId);
            DateTime checkIn = Convert.ToDateTime(Request.QueryString["checkIn"]);
            DateTime checkOut = Convert.ToDateTime(Request.QueryString["checkOut"]);
                booking.UserId = id;
                booking.quantity = 1;
                booking.amount = (int)total;
                booking.checkOutDate = checkOut;
                booking.checkInDate = checkIn;
                booking.roomTypeId = room.roomTypeId;
                booking.roomId = room.roomId;
                    booking.deleted = 0;
                _db.Bookings.Add(booking);
                _db.SaveChanges();
            if (room != null)
            {
                room.roomTotalBooked += 1;

                _db.SaveChanges();
            }
                Response.Redirect("../../UserPage/Payment.aspx?bookingId=" + booking.BookingId);
        }
        
    }
}