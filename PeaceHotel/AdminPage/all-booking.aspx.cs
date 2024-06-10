using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class all_booking : System.Web.UI.Page
    {
        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var comic = from Booking in db.Bookings
                        from Room in db.Rooms
                        from RoomType in db.RoomTypes
                        from aspnet_Users in db.aspnet_Users
                        where Booking.deleted == 0 && Booking.UserId == aspnet_Users.UserId && Booking.roomId == Room.roomId && Room.roomTypeId == RoomType.roomTypeId
                        select Booking;

            if (comic != null)
            {
                Label1.Text = "";
                int i = 0;
                foreach (var n in comic)
                {


                    Label1.Text += "<tr> ";

                    Label1.Text += "<td> " + n.aspnet_Users.UserName + "</td>";
                    Label1.Text += "<td> " + n.Room.roomNumber + "</td>";

                    Label1.Text += "<td> " + n.RoomType.roomType1 + "</td>";
                    Label1.Text += "<td> " + String.Format("{0:dd/MM/yyyy}", n.checkInDate) + "</td>";
                    Label1.Text += "<td> " + String.Format("{0:dd/MM/yyyy}", n.checkOutDate) + "</td>";
                    if (n.rating == null)
                    {
                        Label1.Text += "<td> - </td>";

                    } else
                    {
                        Label1.Text += "<td> " + n.rating + "</td>";
                    }

                    if (n.rating == null)
                    {
                        Label1.Text += "<td> - </td>";

                    }
                    else
                    {
                        Label1.Text += "<td> " + n.review + "</td>";
                    }

                    Label1.Text += "<td> <div class='dropdown dropdown-action'><a href ='#' class='action-icon dropdown-toggle' data-toggle='dropdown' aria-expanded='false'><i class='fa fa-ellipsis-v ellipse_color'></i></a> <div class='dropdown-menu dropdown-menu-right'><a class=\"dropdown-item\" href=\"delete-booking.aspx?bookingId=" + n.BookingId + "\"><i class=\"fas fa-pencil-alt m-r-5\"></i>Delete</a>     </div>    </div>  </td>";

                    Label1.Text += "</tr>";

                    i++;

                }
            }
        }
    }
}