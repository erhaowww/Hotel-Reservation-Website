using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        HotelNewEntities db = new HotelNewEntities();
        Boolean haveDate = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            try
            {
                var temp = from Room r in db.Rooms
                           from Booking b in db.Bookings
                           where r.roomId == b.roomId
                           where now >= b.checkInDate && now <= b.checkOutDate && r.roomStatus == "available"
                           select r;

                if (temp != null)
                {
                    foreach (var n in temp)
                    {
                        Models.Room room = db.Rooms.SingleOrDefault(x => x.roomId == n.roomId);
                        room.roomStatus = "NOTavailable";
                        db.SaveChanges();
                    }
                }
            }catch(Exception ex) { }
            var comic = from Room in db.Rooms
                        where Room.deleted == 0
                        select Room;

            string selected = "";
            string addSelectedToTag1 = "";
            string addSelectedToTag2 = "";
            string addSelectedToTag3 = "";
            string addSelectedToTag4 = "";
            try
            {
                if (Request.QueryString["checkOut"].ToString().Trim() != "" && Request.QueryString["checkIn"].ToString().Trim() != "")
                {
                    haveDate = true;
                }
            }
            catch(Exception ex) { }
            try
            {
                if (IsPostBack)
                {
                    selected = Request["sorting"];
                    if (selected.Equals("name-a-z"))
                    {
                        comic = from Room in db.Rooms
                                where Room.deleted == 0
                                orderby Room.roomName ascending
                                select Room;
                        addSelectedToTag1 = "selected";
                    }
                    else if (selected.Equals("name-z-a"))
                    {
                        comic = from Room in db.Rooms
                                where Room.deleted == 0
                                orderby Room.roomName descending
                                select Room;
                        addSelectedToTag2 = "selected";
                    }
                    else if (selected.Equals("price-low-high"))
                    {
                        comic = from Room in db.Rooms
                                where Room.deleted == 0
                                orderby Room.roomPrice ascending
                                select Room;
                        addSelectedToTag3 = "selected";
                    }
                    else
                    {
                        comic = from Room in db.Rooms
                                where Room.deleted == 0
                                orderby Room.roomPrice descending
                                select Room;
                        addSelectedToTag4 = "selected";
                    }

                }
                try
                {
                    string roomType = Request.QueryString["roomType"] ?? "";
                    if (roomType.Trim() != "")
                    {
                        comic = from Room r in db.Rooms
                                from RoomType rt in db.RoomTypes
                                where r.deleted == 0 && r.deleted == 0 && r.roomTypeId == rt.roomTypeId && rt.roomType1 == roomType
                                orderby r.roomId
                                select r;
                        if (IsPostBack)
                        {
                            selected = Request["sorting"];
                            if (selected.Equals("name-a-z"))
                            {
                                comic = from Room r in db.Rooms
                                        from RoomType rt in db.RoomTypes
                                        where r.deleted == 0 && r.deleted == 0 && r.roomTypeId==rt.roomTypeId && rt.roomType1==roomType
                                        orderby r.roomName ascending
                                        select r;
                                addSelectedToTag1 = "selected";
                            }
                            else if (selected.Equals("name-z-a"))
                            {
                                comic = from Room r in db.Rooms
                                        from RoomType rt in db.RoomTypes
                                        where r.deleted == 0 && r.deleted == 0 && r.roomTypeId == rt.roomTypeId && rt.roomType1 == roomType
                                        orderby r.roomName descending
                                        select r;
                                addSelectedToTag2 = "selected";
                            }
                            else if (selected.Equals("price-low-high"))
                            {
                                comic = from Room r in db.Rooms
                                        from RoomType rt in db.RoomTypes
                                        where r.deleted == 0 && r.deleted == 0 && r.roomTypeId == rt.roomTypeId && rt.roomType1 == roomType
                                        orderby r.roomPrice ascending
                                        select r;
                                addSelectedToTag3 = "selected";
                            }
                            else
                            {
                                comic = from Room r in db.Rooms
                                        from RoomType rt in db.RoomTypes
                                        where r.deleted == 0 && r.deleted == 0 && r.roomTypeId == rt.roomTypeId && rt.roomType1 == roomType
                                        orderby r.roomPrice descending
                                        select r;
                                addSelectedToTag4 = "selected";
                            }
                        }
                    }
                }
                catch (Exception ex) { }
            }
            catch (Exception ex) { }
            //if (roomType.Trim() != "")
            //{
            //    comic = from Room r in db.Rooms
            //            from RoomType rt in db.RoomTypes
            //            orderby r.roomId
            //            where r.deleted == 0 && rt.deleted == 0 && rt.roomType1 == roomType.ToString() && r.roomTypeId == rt.roomTypeId
            //            select r;

            //    if (Request.QueryString["checkOut"].ToString().Trim() != "" && Request.QueryString["checkIn"].ToString().Trim() != "")
            //    {
            //        comic = from Room r in db.Rooms
            //                from RoomType rt in db.RoomTypes
            //                from Booking b in db.Bookings
            //                from Payment p in db.Payments
            //                orderby r.roomId
            //                where r.deleted == 0 && rt.deleted == 0 && b.deleted == 0 && p.deleted == 0
            //                where rt.roomType1 == roomType.ToString() && rt.roomTypeId == r.roomTypeId && r.roomId == b.roomId && p.BookingId == b.BookingId
            //                where (p.paymentStatus == "success" && (checkIn < b.checkInDate || checkIn > b.checkOutDate) && (checkOut < b.checkInDate || checkOut > b.checkOutDate) && (b.checkOutDate < checkIn || b.checkOutDate > checkOut) && (b.checkInDate < checkIn || b.checkInDate > checkOut)) || p.paymentStatus != "success"
            //                select r;
            //    }
            //    else if (Request.QueryString["checkOut"].ToString().Trim() == "" && Request.QueryString["checkIn"].ToString().Trim() != "")
            //    {
            //        comic = from Room r in db.Rooms
            //                from RoomType rt in db.RoomTypes
            //                from Booking b in db.Bookings
            //                from Payment p in db.Payments
            //                orderby r.roomId
            //                where r.deleted == 0 && rt.deleted == 0 && b.deleted == 0 && p.deleted == 0
            //                where rt.roomType1 == roomType.ToString() && rt.roomTypeId == r.roomTypeId && r.roomId == b.roomId && p.BookingId == b.BookingId
            //                where (p.paymentStatus == "success" && (checkIn < b.checkInDate || checkIn > b.checkOutDate)) || p.paymentStatus != "success"
            //                select r;
            //    }
            //    else if (Request.QueryString["checkIn"].ToString().Trim() == "" && Request.QueryString["checkOut"].ToString().Trim() != "")
            //    {
            //        comic = from Room r in db.Rooms
            //                from RoomType rt in db.RoomTypes
            //                from Booking b in db.Bookings
            //                from Payment p in db.Payments
            //                orderby r.roomId
            //                where r.deleted == 0 && rt.deleted == 0 && b.deleted == 0 && p.deleted == 0
            //                where rt.roomType1 == roomType.ToString() && rt.roomTypeId == r.roomTypeId && r.roomId == b.roomId && p.BookingId == b.BookingId
            //                where (p.paymentStatus == "success" && (checkOut < b.checkInDate || checkOut > b.checkOutDate)) || p.paymentStatus != "success"
            //                select r;
            //    }
            //}


            Label3.Text = "";
            Label3.Text += "<select class=\"form-control\" id=\"exampleFormControlSelect1\" name = \"sorting\" onchange = \"this.form.submit()\" >";
            Label3.Text += "<option value = \"none\" name = \"default\" disable hidden> Default Sorting </option>";
            Label3.Text += "<option value = \"name-a-z\" name=\"name-a-z\" " + addSelectedToTag1 + ">Sort By Name A To Z</option>";
            Label3.Text += "<option value = \"name-z-a\" name= \"name-z-a\" " + addSelectedToTag2 + ">Sort By Name Z To A</option>";
            Label3.Text += "<option value = \"price-low-high\" name= \"price-low-high\" " + addSelectedToTag3 + ">Sort By Price: Low to High</option>";
            Label3.Text += "<option value = \"price-high-low\" name=\"price-high-low\" " + addSelectedToTag4 + "> Sort By Price: High to Low</option>";
            Label3.Text += "</select>";


            if (comic != null)
            {
                Label1.Text = "";
                Label2.Text = "";
                int i = 0;
                foreach (var n in comic)
                {
                    var comic2 = from RoomType in db.RoomTypes
                                 select RoomType;

                    var comicBooking = from Booking in db.Bookings
                                           //where Booking.deleted == 0
                                       select Booking;

                    int bookedTotal = 0;

                    int rate1 = 1;
                    int rate2 = 2;
                    int rate3 = 3;
                    int rate4 = 4;
                    int rate5 = 5;

                    int response1 = 0;
                    int response2 = 0;
                    int response3 = 0;
                    int response4 = 0;
                    int response5 = 0;
                    int reviewTotal = 0;


                    foreach (var booking in comicBooking)
                    {
                        if (booking.roomId == n.roomId)
                        {
                            bookedTotal++;
                            switch (booking.rating)
                            {
                                case 1:
                                    response1++;
                                    break;
                                case 2:
                                    response2++;
                                    break;
                                case 3:
                                    response3++;
                                    break;
                                case 4:
                                    response4++;
                                    break;
                                case 5:
                                    response5++;
                                    break;
                                default:
                                    break;
                            }

                            if (booking.review != null)
                            {
                                reviewTotal++;
                            }
                        }
                    }

                    int scoreTotal = 0;
                    int responseTotal = 0;
                    double score = 0;
                    if (response1 != 0 || response2 != 0 || response3 != 0 || response4 != 0 || response5 != 0)
                    {
                        scoreTotal = (rate1 * response1) + (rate2 * response2) + (rate3 * response3) + (rate4 * response4) + (rate5 * response5);
                        responseTotal = response1 + response2 + response3 + response4 + response5;
                        score = (double)scoreTotal / (double)responseTotal;
                    }


                    Label1.Text += "<input type=\"hidden\" name=\"roomId\" class=\"roomId\" id=\"roomId\" value />";
                    Label1.Text += "<div class=\"row mb-5\">";
                    Label1.Text += "<div class=\"col-sm-9 col-md-9 col-lg-9 offset-md-1\">";
                    Label1.Text += "<div class=\"hotel-card bg-white rounded-lg shadow overflow-hidden d-block d-lg-flex\">";
                    Label1.Text += "<div class=\"hotel-card_images\">";
                    Label1.Text += "<div id=\"bootstrapCarousel" + i + "\" class=\"carousel slide h-100\" data-ride=\"carousel\">";
                    Label1.Text += "<div class=\"carousel-inner h-100\" data-toggle=\"modal\" data-target=\"#exampleModal" + i + "\" style=\"cursor: pointer;\">";
                    Label1.Text += "<div class=\"carousel-item h-100 active\">";
                    Label1.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg) + "\" class=\"d-block w-100\" alt=\"Hotel Image\"></div>";
                    Label1.Text += "<div class=\"carousel-item h-100\">";
                    Label1.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg2) + "\" class=\"d-block w-100\" alt=\"Hotel Image\"></div>";
                    Label1.Text += "<div class=\"carousel-item h-100\">";
                    Label1.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg3) + "\" class=\"d-block w-100\" alt=\"Hotel Image\"></div></div>";
                    Label1.Text += "<a class=\"carousel-control-prev\" href=\"#bootstrapCarousel" + i + "\" role=\"button\" data-slide=\"prev\" >";
                    Label1.Text += "<span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>";
                    Label1.Text += "<span class=\"sr-only\">Previous</span></a>";
                    Label1.Text += "<a class=\"carousel-control-next\" href=\"#bootstrapCarousel" + i + "\" role=\"button\" data-slide=\"next\">";
                    Label1.Text += "<span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>";
                    Label1.Text += "<span class=\"sr-only\">Next</span></a></div></div>";
                    Label1.Text += "<div class=\"hotel-card_info p-4\">";
                    Label1.Text += "<div class=\"d-flex align-items-center mb-2\">";
                    Label1.Text += "<h5 class=\"mb-0 mr-2\">" + n.roomName + "</h5><div>";


                    if (score > 0)
                    {
                        if (score >= 1 && score < 2)
                        {
                            Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            for (int r = 0; r < 4; r++)
                            {
                                Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                            }
                        }
                        else if (score >= 2 && score < 3)
                        {
                            Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            for (int r = 0; r < 3; r++)
                            {
                                Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                            }
                        }
                        else if (score >= 3 && score < 4)
                        {
                            for (int r = 0; r < 3; r++)
                            {
                                Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            }
                            Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                            Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                        }
                        else if (score >= 4 && score < 5)
                        {
                            for (int r = 0; r < 4; r++)
                            {
                                Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            }
                            Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                        }
                        else
                        {
                            for (int r = 0; r < 5; r++)
                            {
                                Label1.Text += "<i class=\"fa fa-star text-warning\"></i>";
                            }
                        }
                    }
                    else
                    {
                        for (int r = 0; r < 5; r++)
                        {
                            Label1.Text += "<i class=\"far fa-star text-warning\"></i>";
                        }
                    }
                    //Label1.Text += "<i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"far fa-star text-warning\"></i>";
                    Label1.Text += "</div><a href=\"javascript:void(0);\" class=\"text-dark ml-auto\"><i class=\"far fa-heart fa-lg\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Add to favorites\" alt=\"Add to favorites\"></i></a></div>";
                    Label1.Text += "<div class=\"d-flex justify-content-between align-items-end\">";
                    Label1.Text += "<div class=\"hotel-card_details\">";
                    Label1.Text += "<div class=\"text-muted mb-2\">" + bookedTotal + " Booked</div>";
                    Label1.Text += "<div class=\"mb-2\"><span class=\"badge badge-primary\">" + score.ToString("0.0") + "</span> <a href = \"#!\" class=\"text-muted rating\" style=\"display: inline-block !important\">(" + responseTotal + " ratings & " + reviewTotal + " reviews)</a></div>";
                    Label1.Text += "<div class=\"amnities d-flex mb-3\">";
                    foreach (string roomService in n.roomProvided.ToString().Split('|'))
                    {
                        if (roomService.Equals("Desk bell"))
                        {
                            Label1.Text += "<img class=\"mr-2\" src=\"assets/images/icons/desk-bell.svg\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Desk bell\" alt=\"Desk bell\" >";
                        }
                        else if (roomService.Equals("Single bed") || roomService.Equals("Double bed") || roomService.Equals("Triple bed"))
                        {
                            Label1.Text += "<img class=\"mr-2\" src=\"assets/images/icons/single-bed.svg\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"" + roomService + "\" alt=\"" + roomService + "\">";
                        }
                        else if (roomService.Equals("Towels"))
                        {
                            Label1.Text += "<img class=\"mr-2\" src=\"assets/images/icons/towels.svg\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Towels\" alt=\"Towels\">";
                        }
                        else if (roomService.Equals("Wifi"))
                        {
                            Label1.Text += "<img class=\"mr-2\" src=\"assets/images/icons/wifi.svg\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Wifi\" alt=\"Wifi\">";
                        }
                    }
                    Label1.Text += "</div><ul class=\"hotel-checklist pl-0 mb-0\">";
                    foreach (string description in n.roomDescription.ToString().Split('|'))
                    {
                        Label1.Text += "<li><i class=\"fa fa-check text-success\"></i>" + description + "</li>";
                    }
                    Label1.Text += "</ul></div><div class=\"hotel-card_pricing text-center\"><h3>RM" + n.roomPrice + "</h3>";
                    if (haveDate) {
                        Label1.Text += "<a href=\"../UserPage/Profile/confirm-booking.aspx?room=" + n.roomId + "&checkIn=" + Request.QueryString["checkIn"].ToString() + "&checkOut=" + Request.QueryString["checkOut"].ToString() + "\">";
                        Label1.Text += "<button type=\"button\" class=\"btn-room btn-room-primary\">Select</button></a>";
                    }
                    Label1.Text += "</div></div></div></div></div></div>";

                    foreach (var m in comic2)
                    {
                        if (n.roomTypeId == m.roomTypeId)
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
                            Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg) + "\" style=\"max-width: 70%;\" class=\"d-block w-100\" alt=\"Hotel Image\"></div>";
                            Label2.Text += "<div class=\"swiper-slide\">";
                            Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg2) + "\" style=\"max-width: 70%;\" class=\"d -block w-100\" alt=\"Hotel Image\"></div>";
                            Label2.Text += "<div class=\"swiper-slide\">";
                            Label2.Text += "<img src=\"data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg3) + "\" style=\"max-width: 70%;\" class=\"d-block w-100\" alt=\"Hotel Image\"></div></div>";
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


        }

        //[WebMethod]
        //public static string Textbox1_Click(int roomId2)
        //{
        //    Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
        //    int roomId = roomId2;
        //    HotelNewEntities SampleDb = new HotelNewEntities();
        //    savedRoom savedRoom = new savedRoom();
        //    savedRoom.userId = Convert.ToInt32(id);
        //    savedRoom.roomId = roomId;

        //    SampleDb.savedRoom.Add(savedRoom);
        //    SampleDb.SaveChanges();

        //    return "success";
        //}
    }
}