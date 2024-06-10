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
    public partial class bookedRooms : System.Web.UI.Page
    {
        HotelNewEntities db = new HotelNewEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["cancelBookedRoom"] != null)
            {
                Response.Write("<script>console.log(\"12112\")</script>");
                int paymentId = Convert.ToInt32(Request.QueryString["cancelBookedRoom"]);

                HotelNewEntities _db = new HotelNewEntities();
                Models.Payment p = _db.Payments.SingleOrDefault(x => x.paymentId == paymentId);
                if (p != null)
                {
                    p.paymentStatus = "cancel";

                    _db.SaveChanges();
                }
                Response.Redirect("bookedRooms.aspx");

            }


            if (Request.QueryString["bookingId"] != null)
            {
                int bookingId = Convert.ToInt32(Request.QueryString["bookingId"]);
                int stars = Convert.ToInt32(Request.QueryString["rate_value"]);
                Response.Write("<script>alert(" + stars + ")</script>");
                string comment = Request.QueryString["comment"];
                Response.Write("<script>alert(" + comment + ")</script>");


                HotelNewEntities _db = new HotelNewEntities();
                Models.Booking b = _db.Bookings.SingleOrDefault(x => x.BookingId == bookingId);
                if (b != null)
                {
                    b.rating = Convert.ToInt32(stars);
                    b.review = comment;

                    _db.SaveChanges();
                }
                Response.Redirect("bookedRooms.aspx");

            }




            var comic = from Payment p in db.Payments
                        from Booking b in db.Bookings
                        from Room r in db.Rooms
                        from RoomType t in db.RoomTypes
                        from aspnet_Users u in db.aspnet_Users
                        where p.BookingId == b.BookingId && p.UserId == u.UserId && b.UserId == u.UserId && b.roomId == r.roomId && t.roomTypeId == r.roomTypeId
                        select new ViewModel
                        {
                            Payment = p,
                            Booking = b,
                            Room = r,
                            RoomType = t,
                            aspnet_Users = u
                        };

            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";

            int i = 0;
            var todaysDate = DateTime.Today;
            foreach (var n in comic)
            {
                var comic2 = from RoomType in db.RoomTypes
                             select RoomType;
                int result = DateTime.Compare((DateTime)n.Booking.checkOutDate, todaysDate);
                if (result == -1) //-1: todayDate > checkOutDate ; 1 = todayDate < checkOutDate
                {
                    Label3.Text += "<tr>";
                    Label3.Text += "<td><div class=\"div-inside-img\" data-toggle=\"modal\" data-target=\"#exampleModal" + i + "\"><img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.Room.roomImg) + "\" alt=\"logo\" style=\"max-width: 250px\"><div class=\"positioning\"><i class=\"far fa-images\"></i></div></div></td>";
                    Label3.Text += "<td>" + n.RoomType.roomType1 + "</td>";
                    Label3.Text += "<td>" + n.Room.roomNumber + "</td>";
                    Label3.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.Booking.checkInDate) + "</td>";
                    Label3.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.Booking.checkOutDate) + "</td>";
                    Label3.Text += "<td>" + n.Payment.paymentTotal + "</td>";
                    Label3.Text += "<td><button type=\"button\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#ratingModal" + i + "\">Rating</button></td>";
                    Label3.Text += "</tr>";

                    Label4.Text += "<form method=\"get\" id=\"form" + i + "\">";
                    Label4.Text += "<div class=\"modal fade\" id=\"ratingModal" + i + "\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
                    Label4.Text += "<div class=\"modal-dialog\">";
                    Label4.Text += "<div class=\"modal-content\">";
                    Label4.Text += "<div class=\"modal-header\">";
                    Label4.Text += "<h5 class=\"modal-title\" id=\"ratingModalLabel" + i + "\">Rating and reviews</h5>";
                    Label4.Text += "<button type = \"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
                    Label4.Text += "<span aria-hidden=\"true\">&times;</span>";
                    Label4.Text += "</button></div>";
                    Label4.Text += "<div class=\"modal-body\">";
                    Label4.Text += "<div class=\"wrapper\">";
                    Label4.Text += "<div class=\"master\">";
                    Label4.Text += "<h1 class=\"ratingNreview\">Review And rating</h1>";
                    Label4.Text += "<h2 class=\"ratingDesc\">How was your experience about our hotel?</h2>";
                    Label4.Text += "<div class=\"rating-component\">";
                    Label4.Text += "<div class=\"status-msg\">";
                    Label4.Text += "<label>";
                    Label4.Text += "<input class=\"rating_msg\" id=\"rating_msg\" type=\"hidden\" name=\"rating_msg\" value=\"\" /></label></div>";
                    Label4.Text += "<div class=\"stars-box\">";
                    Label4.Text += "<i class=\"star fa fa-star\" title=\"1 star\" data-message=\"Poor\" data-value=\"1\"></i>";
                    Label4.Text += "<i class=\"star fa fa-star\" title=\"2 stars\" data-message=\"Too bad\" data-value=\"2\"></i>";
                    Label4.Text += "<i class=\"star fa fa-star\" title=\"3 stars\" data-message=\"Average quality\" data-value=\"3\"></i>";
                    Label4.Text += "<i class=\"star fa fa-star\" title=\"4 stars\" data-message=\"Nice\" data-value=\"4\"></i>";
                    Label4.Text += "<i class=\"star fa fa-star\" title=\"5 stars\" data-message=\"very good qality\" data-value=\"5\"></i></div>";
                    Label4.Text += "<div class=\"starrate\">";
                    Label4.Text += "<label><input class=\"ratevalue\" id=\"ratevalue\" type=\"hidden\" name=\"rate_value\" value=\"\" /></label></div></div>";
                    Label4.Text += "<div class=\"feedback-tags\">";
                    Label4.Text += "<div class=\"tags-container\" data-tag-set=\"1\">";
                    Label4.Text += "<div class=\"question-tag\">Why was your experience so bad?</div></div>";
                    Label4.Text += "<div class=\"tags-container\" data-tag-set=\"2\"><div class=\"question-tag\">Why was your experience so bad?</div></div>";
                    Label4.Text += "<div class=\"tags-container\" data-tag-set=\"3\"><div class=\"question-tag\">Why was your average rating experience ?</div></div>";
                    Label4.Text += "<div class=\"tags-container\" data-tag-set=\"4\"><div class=\"question-tag\">Why was your experience good?</div></div>";
                    Label4.Text += "<div class=\"tags-container\" data-tag-set=\"5\"><div class=\"make-compliment\"><div class=\"compliment-container\">Give a compliment<i class=\"far fa-smile-wink\"></i></div></div></div>";
                    Label4.Text += "<div class=\"tags-box\">";
                    Label4.Text += "<input type = \"text\" class=\"tag form-control\" name=\"comment\" id=\"inlineFormInputName\" placeholder=\"please enter your review\">";
                    Label4.Text += "<input type = \"hidden\" name=\"bookingId\" value=\"" + n.Booking.BookingId + "\" /></div></div>";
                    Label4.Text += "<div class=\"button-box\">";
                    Label4.Text += "<input type=\"submit\" class=\"done btn btn-warning\" disabled=\"disabled\" value=\"Add review\" id=\"submitBtn\" /></div>";
                    //Label4.Text += "<a href=\"\"><button type=\"submit\" class=\"done btn btn-warning\" disabled=\"disabled\" id=\"submitBtn\">Add review</button></a></div>";
                    Label4.Text += "<div class=\"submited-box\"><div class=\"loader\"></div><div class=\"success-message\">Thank you!</div></div></div></div></div>";
                    Label4.Text += "<div class=\"modal-footer\"><button type = \"button\" class=\"btn-room btn-room-secondary\" data-dismiss=\"modal\">Close</button>";
                    Label4.Text += "</div></div></div></div>";
                    Label4.Text += "</form>";

                }
                else
                {
                    Label1.Text += "<tr>";
                    Label1.Text += "<td><div class=\"div-inside-img\" data-toggle=\"modal\" data-target=\"#exampleModal" + i + "\"><img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.Room.roomImg) + "\" alt=\"logo\" style=\"max-width: 250px\"><div class=\"positioning\"><i class=\"far fa-images\"></i></div></div></td>";
                    Label1.Text += "<td>" + n.RoomType.roomType1 + "</td>";
                    Label1.Text += "<td>" + n.Room.roomNumber + "</td>";
                    Label1.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.Booking.checkInDate) + "</td>";
                    Label1.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.Booking.checkOutDate) + "</td>";
                    Label1.Text += "<td>" + n.Payment.paymentTotal + "</td>";
                    Label1.Text += "<input type=\"hidden\" name=\"cancelBookedRoom\" value=\"" + n.Payment.paymentId + "\">";
                    Label1.Text += "<td><a href=\"?cancelBookedRoom=" + n.Payment.paymentId + "\"><input type=\"submit\" value=\"Cancel booking\" class=\"btn btn-danger\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"You can only cancel booking within 1day\" /></a></td>";
                    Label1.Text += "</tr>";
                }


                foreach (var m in comic2)
                {
                    if (n.Room.roomTypeId == m.roomTypeId)
                    {
                        Label2.Text += "<div class=\"modal fade\" id=\"exampleModal" + i + "\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
                        Label2.Text += "<div class=\"modal-dialog modal-xl\">";
                        Label2.Text += "<div class=\"modal-content\">";
                        Label2.Text += "<div class=\"modal-header\">";
                        Label2.Text += "<h5 class=\"modal-title\" id=\"exampleModalLabel" + i + "\">" + m.roomType1 + "</h5>";
                        Label2.Text += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
                        Label2.Text += "<span aria-hidden=\"true\">&times;</span>";
                        Label2.Text += "</button>";
                        Label2.Text += "</div>";
                        Label2.Text += "<div class=\"modal-body\">";
                        Label2.Text += "<div class=\"swiper mySwiper\">";
                        Label2.Text += "<div class=\"swiper-wrapper\">";
                        Label2.Text += "<div class=\"swiper-slide\">";
                        Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.Room.roomImg) + "\" style=\"max-width: 70%;\" class=\"d-block w-100\" alt=\"Hotel Image\"></div>";
                        Label2.Text += "<div class=\"swiper-slide\">";
                        Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.Room.roomImg2) + "\" style=\"max-width: 70%;\" class=\"d -block w-100\" alt=\"Hotel Image\"></div>";
                        Label2.Text += "<div class=\"swiper-slide\">";
                        Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.Room.roomImg3) + "\" style=\"max-width: 70%;\" class=\"d-block w-100\" alt=\"Hotel Image\"></div></div>";
                        Label2.Text += "<div class=\"swiper-button-next\"></div>";
                        Label2.Text += "<div class=\"swiper-button-prev\"></div>";
                        Label2.Text += "<div class=\"swiper-pagination\"></div></div>";
                        Label2.Text += "<main role=\"main\" class=\"max-w-4xl mx-auto px-4 mb-8\">";
                        Label2.Text += "<h1 class=\"text-center border-b-2 border-dotted font-thin border-grey mb-6 pb-4\"></h1>";
                        Label2.Text += "<div class=\"md:flex content-center flex-wrap -mx-2 p-3 rounded\">";

                        string[] header = m.roomHeading.ToString().Split('|');
                        string[] description = m.roomDescription.ToString().Split('|');
                        for (int z = 0; z < header.Length; z++)
                        {
                            Label2.Text += "<div class=\"md:flex md:w-1/2 lg:w-1/3 px-2 py-2\">";
                            Label2.Text += "<div class=\"md:flex-1 p-4 rounded bg-white border-b border-r\">";
                            Label2.Text += "<h2>" + header[z] + "</h2>";
                            Label2.Text += "<p>" + description[z] + "</p>";
                            Label2.Text += "</div></div>";
                        }


                        Label2.Text += "<div class=\"md:flex md:w-1/2 lg:w-1/3 px-2 py-2\">";
                        Label2.Text += "<div class=\"md:flex-1 p-4 rounded bg-white border-b border-r\">";
                        Label2.Text += "</div></main></div>";
                        Label2.Text += "<div class=\"modal-footer\">";
                        Label2.Text += "<button type = \"button\" class=\"btn-room btn-room-secondary\" data-dismiss=\"modal\">Close</button>";
                        Label2.Text += "</div></div></div></div>";
                    }
                }

                i++;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            //HotelNewEntities _db = new HotelNewEntities();
            //Models.Booking b = _db.Booking.SingleOrDefault(x => x.UserId == id);
            //if (b != null)
            //{
            //    b.rating = Convert.ToInt32(ratevalue.Value);
            //    b.review = rating_msg.Value;

            //    _db.SaveChanges();
            //}

            //Response.Redirect("bookedRooms.aspx");
        }
    }
}