using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class delete_product : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        public int rId;
        public int rNum;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["roomId"] != null)
            {
                rId = int.Parse(Request.QueryString["roomId"] ?? "");
                rNum = int.Parse(Request.QueryString["roomNumber"] ?? "");
            }



        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            Models.Room room = _db.Rooms.SingleOrDefault(x => x.roomId == rId);
            if (room != null)
            {
                //room.roomId = rId;
                room.deleted = 1;

                _db.SaveChanges();
            }
            Response.Redirect("all-room.aspx");
        }
    }
}