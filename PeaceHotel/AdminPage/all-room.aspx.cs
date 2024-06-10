using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class all_product : System.Web.UI.Page
    {



        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var comic =  from Room in db.Rooms
                        where Room.deleted == 0
                         select Room;

    
                //comic = from Room r in db.Rooms
                //        from RoomType rt in db.RoomTypes
                //        where r.deleted == 0
                //        where rt.deleted == 0
         
                //        where r.roomTypeId == rt.roomTypeId
                //        select r;


            

            if (comic != null)
            {
                Label1.Text = "";
                int i = 0;
                foreach (var n in comic)
                {

            
                    Label1.Text += "<tr> ";

                    Label1.Text += "<td> "+n.roomId+"</td>";
                    Label1.Text += "<td> " + n.RoomType.roomHeading + "</td>";
              
                    Label1.Text += "<td> <img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg) +"'/></td>";
                    Label1.Text += "<td> <img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg2) + "'/></td>";
                    Label1.Text += "<td> <img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])n.roomImg3) + "'/></td>";
                    Label1.Text += "<td> " + n.roomName + "</td>";
                    Label1.Text += "<td> " + n.roomTotalBooked + "</td>";
                    Label1.Text += "<td> " + n.roomStatus + "</td>";
                    Label1.Text += "<td> " + n.roomPrice + "</td>";
                    Label1.Text += "   <td> <div class='dropdown dropdown-action'><a href ='#' class='action-icon dropdown-toggle' data-toggle='dropdown' aria-expanded='false'><i class='fa fa-ellipsis-v ellipse_color'></i></a> <div class='dropdown-menu dropdown-menu-right'><a class='dropdown-item' href='edit-product.aspx?roomId="+n.roomId+"&roomType="+n.RoomType.roomType1+ "'><i class='fas fa-pencil-alt m-r-5'></i>Update</a>    <a class=\"dropdown-item\" href=\"delete-product.aspx?roomNumber="+n.roomNumber+"&roomId=" + n.roomId+"\"><i class=\"fas fa-pencil-alt m-r-5\"></i>Delete</a>     </div>    </div>  </td ></tr>";

                    Label1.Text += "</tr>";

                    i++;

                }
            }
        }


    }
}