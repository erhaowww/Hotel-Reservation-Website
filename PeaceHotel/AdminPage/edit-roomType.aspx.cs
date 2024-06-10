using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class edit_roomType : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int roomTypeId = int.Parse(Request.QueryString["roomTypeId"] ?? "");
                Models.RoomType roomType = _db.RoomTypes.SingleOrDefault(x => x.roomTypeId == roomTypeId);
                id.Text = roomType.roomTypeId.ToString();
                inputRoomType.Text = roomType.roomType1;
                roomTotal.Text = roomType.roomTotal.ToString();
                string[] head = roomType.roomHeading.Split('|');
                string[] desc = roomType.roomDescription.Split('|');
                if (head.Length > 0)
                {
                    roomHeading1.Text = head[0];
                    roomDescription1.Text = desc[0];
                }
                if (head.Length > 1)
                {
                    roomHeading2.Text = head[1];
                    roomDescription2.Text = desc[1];
                }
                if (head.Length > 2)
                {
                    roomHeading3.Text = head[2];
                    roomDescription3.Text = desc[2];
                }
                if (head.Length > 3)
                {
                    roomHeading4.Text = head[3];
                    roomDescription4.Text = desc[3];
                }
                if (head.Length > 4)
                {
                    roomHeading5.Text = head[4];
                    roomDescription5.Text = desc[4];
                }
                if (head.Length > 5)
                {
                    roomHeading6.Text = head[5];
                    roomDescription6.Text = desc[5];
                }

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int roomTypeId = int.Parse(id.Text);
            String type = inputRoomType.Text;
            int total = Convert.ToInt16(roomTotal.Text);
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

            Models.RoomType roomType = _db.RoomTypes.SingleOrDefault(x => x.roomTypeId == roomTypeId);
            if (roomType != null)
            {
                roomType.roomTypeId = roomTypeId;
                roomType.roomType1 = type;
                roomType.roomTotal = total;
                roomType.roomHeading= heading;
                roomType.roomDescription = desc;

                _db.SaveChanges();
            }
            Response.Redirect("../AdminPage/all-roomType.aspx");
        }
    }
}