using PeaceHotel.Models;
using System;

namespace PeaceHotel.AdminPage
{
    public partial class add_productType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBtn_Click(Object sender,
                          EventArgs e)
        {
            RoomType roomType = new RoomType();
            roomType.roomType1 = inputRoomType.Text;
            roomType.roomTotal = Convert.ToInt16(roomTotal.Text);
            String heading = "";
            String desc = "";
            if (roomHeading1.Text.Trim() != "")
            {
                heading += roomHeading1.Text;
                desc += roomDescription1.Text;
                if (roomHeading2.Text.Trim() != "")
                {
                    heading += "|" + roomHeading2.Text;
                    desc += "|" + roomDescription2.Text;
                    if (roomHeading3.Text.Trim() != "")
                    {
                        heading += "|" + roomHeading3.Text;
                        desc += "|" + roomDescription3.Text;
                        if (roomHeading4.Text.Trim() != "")
                        {
                            heading += "|" + roomHeading4.Text;
                            desc += "|" + roomDescription4.Text;
                            if (roomHeading5.Text.Trim() != "")
                            {
                                heading += "|" + roomHeading5.Text;
                                desc += "|" + roomDescription5.Text;
                                if (roomHeading6.Text.Trim() != "")
                                {
                                    heading += "|" + roomHeading6.Text;
                                    desc += "|" + roomDescription6.Text;
                                }
                            }
                        }
                    }

                }
            }

            roomType.roomHeading = heading;
            roomType.roomDescription = desc;
            roomType.deleted = 0;
            // Save changes here
            HotelNewEntities _db = new HotelNewEntities();


            _db.RoomTypes.Add(roomType);
            _db.SaveChanges();
            Response.Redirect("../AdminPage/all-roomType.aspx");

        }

    }
}