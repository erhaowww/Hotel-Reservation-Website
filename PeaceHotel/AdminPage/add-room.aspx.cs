using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            HttpFileCollection File_Collection = Request.Files;
            byte[] File_Buffer = null;
            byte[] File_Buffer2 = null;
            byte[] File_Buffer3 = null;
            int i = 0;
            //using (HotelNewEntities SampleDb = new HotelNewEntities())
            //{
                foreach (string File_Uploader in File_Collection)
                {
                    HttpPostedFile Posted_File = File_Collection[File_Uploader];
                    if (Posted_File.ContentLength > 0)
                    {
                        BinaryReader Binary_Reader = new BinaryReader(Posted_File.InputStream);

                        if (i == 0)
                        {
                            File_Buffer = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        } else if (i == 1)
                        {
                            File_Buffer2 = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        } else
                        {
                            File_Buffer3 = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        }
                        i++;

                        //SampleDb.Room.Add(new Room
                        //{
                        //    roomTypeId = Convert.ToInt32(roomType.Text),
                        //    roomNumber = Convert.ToInt32(roomNo.Text),
                        //    roomStatus = roomStatus.Text,
                        //    roomPrice = Convert.ToDouble(roomPrice.Text),
                        //    roomImg = File_Buffer,
                        //    deleted = 0,
                        //    roomTotalBooked = 0
                        //});
                    }
                }
            //    SampleDb.SaveChanges();
            //    Page.Response.Redirect(Page.Request.Url.ToString(), true);
            //}

            String desc = "";
            if (description1.Text.Trim() != "")
            {
                desc += description1.Text;
                if (description2.Text.Trim() != "")
                {
                    desc += "|" + description2.Text;
                    if (description3.Text.Trim() != "")
                    {
                        desc += "|" + description3.Text;
                    }

                }
            }

            string interests = string.Empty;

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if(item.Selected)
                    interests += item + "|";
            }

            HotelNewEntities SampleDb = new HotelNewEntities();
            Room room = new Room();
            room.roomTypeId = Convert.ToInt32(roomType.Text);
            room.roomNumber = Convert.ToInt32(roomNo.Text);
            room.roomName = roomName.Text;
            room.roomStatus = roomStatus.Text;
            room.roomPrice = Convert.ToDouble(roomPrice.Text);
            room.roomImg = File_Buffer;
            room.roomImg2 = File_Buffer2;
            room.roomImg3 = File_Buffer3;
            room.roomDescription = desc;
            room.roomProvided = interests;
            room.deleted = 0;
            room.roomTotalBooked = 0;
            SampleDb.Rooms.Add(room);

            SampleDb.SaveChanges();

            Response.Redirect("all-room.aspx");


        }
    }
}