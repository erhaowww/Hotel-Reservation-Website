using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class delete_roomType : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int roomTypeId = int.Parse(Request.QueryString["roomTypeId"] ?? "");
            Models.RoomType roomType = _db.RoomTypes.SingleOrDefault(x => x.roomTypeId == roomTypeId);
            id.Text = roomType.roomTypeId.ToString();
            type.Text = roomType.roomType1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int roomTypeId = int.Parse(id.Text);


            Models.RoomType roomType = _db.RoomTypes.SingleOrDefault(x => x.roomTypeId == roomTypeId);
            if (roomType != null)
            {
                roomType.roomTypeId = roomTypeId;
                roomType.deleted = 1;

                _db.SaveChanges();
            }
            Response.Redirect("../AdminPage/all-roomType.aspx");
        }
    }
}
