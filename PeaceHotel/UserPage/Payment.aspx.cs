using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage
{
    public partial class Payment2 : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            RequiredFieldValidator4.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
            RegularExpressionValidator2.Enabled = false;
            RegularExpressionValidator3.Enabled = false;
            try
            {
                int bookingId = int.Parse(Request.QueryString["bookingId"] ?? "");
            
            Models.Booking booking = _db.Bookings.SingleOrDefault(x => x.BookingId == bookingId);
            Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            Models.aspnet_Users user = _db.aspnet_Users.SingleOrDefault(x => x.UserId == id);
            var comic = from Booking b in _db.Bookings
                        from Room r in _db.Rooms
                        where b.roomId == r.roomId
                        select b;
            foreach (var n in comic)
            {
                bRoom.Text = n.Room.roomName;
                String[] desc = n.Room.roomDescription.Split('|');
                for(int i = 0; i < desc.Length; i++)
                {
                    bRoomDesc.Text = desc[i]+"\n\n";
                }
                bRoomPrice.Text = n.Room.roomPrice.ToString();
                DateTime checkIn = (DateTime)n.checkInDate;
                DateTime checkOut = (DateTime)n.checkOutDate;
                bRoomDate.Text = checkIn.ToString("MM/dd/yyyy") + " to "+checkOut.ToString("MM/dd/yyyy");
                Cost.Text = "RM" + n.amount;
                Buyer.Text = user.UserName;


            }
            }catch (Exception ex) { }


        }
            

        protected void Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Profile/confirm-booking.aspx");
        }
        protected void Submit_Click(object sender, EventArgs e)
        {

            int paymentId = int.Parse(Request.QueryString["paymentId"] ?? "0");
            int bookingId = int.Parse(Request.QueryString["bookingId"] ?? "0");
            if (paymentId!=0) {

                Models.Payment payment = _db.Payments.SingleOrDefault(x => x.paymentId == paymentId);
                Button btn = (Button)sender;
                payment.paymentMethod = btn.CommandName;
                
                _db.SaveChanges();
                Response.Redirect("./payment-billing.aspx?paymentId=" + payment.paymentId + "&bookingId=" + bookingId);
            }
            else
            {
                Button btn = (Button)sender;
                DateTime now = DateTime.Now;
                Payment payment = new Payment();
                Models.Booking booking = _db.Bookings.SingleOrDefault(x => x.BookingId == bookingId);
                Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
                payment.BookingId = bookingId;
                payment.UserId = id;
                payment.paymentDate = now;
                payment.paymentTotal = booking.amount;
                payment.paymentMethod = btn.CommandName;
                payment.paymentStatus = "pending";

                _db.Payments.Add(payment);
                _db.SaveChanges();

                Response.Redirect("./payment-billing.aspx?paymentId=" + payment.paymentId + "&bookingId=" + bookingId);
            }
        }
    }
}