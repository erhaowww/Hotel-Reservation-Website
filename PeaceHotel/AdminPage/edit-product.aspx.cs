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
    public partial class edit_product : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        public int roomId;
        public byte[] image1;
        public string image;
        public string roomTypeV;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["roomId"] != null)
            {
                roomId = int.Parse(Request.QueryString["roomId"] ?? "");
            }

            Models.Room b = _db.Rooms.SingleOrDefault(x => x.roomId == roomId);

            if (!IsPostBack)
            {

                roomType.SelectedIndex = 0;
                if (b != null)
                {

                    roomTypeV = b.RoomType.roomType1;

                    roomType.SelectedIndex = 0;
                    roomName.Text = b.roomName;
                    roomNo.Text = b.roomNumber.ToString();
                    if (b.roomStatus.ToString().Equals("Available"))
                    {
                        roomStatus.SelectedIndex = 0;
                    }
                    else
                    {
                        roomStatus.SelectedIndex = 1;
                    }
                    roomStatus.Text = b.roomStatus.ToString();
                    roomPrice.Text = b.roomPrice.ToString();
                    //CheckBoxList1.SelectedValue = ;


                    image = b.roomImg.ToString();



                    int c = 0;
                    foreach (string description in b.roomDescription.ToString().Split('|'))
                    {
                        if (c == 0)
                            description1.Text = description;
                        else if (c == 1)
                            description2.Text = description;
                        else
                            description3.Text = description;

                        c++;

                    }


                    foreach (ListItem item in CheckBoxList1.Items)
                    {
                        if (b.roomProvided.Contains(item.Value.ToString()))
                            item.Selected = true;
                    }

                    Label1.Text += "<img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])b.roomImg) + "'/>";
                    Label2.Text += "<img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])b.roomImg2) + "'/>";
                    Label3.Text += "<img height='200px' width='200px'  src='data:image/jpg;base64," + Convert.ToBase64String((byte[])b.roomImg3) + "'/>";
                }


            }


        }




        protected void submitBtn_Click(object sender, EventArgs e)
        {
            Boolean fileExit1 = false, fileExit2 = false, fileExit3 = false;
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
                        fileExit1 = true;
                    }
                    else if (i == 1)
                    {
                        File_Buffer2 = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        fileExit2 = true;
                    }
                    else
                    {
                        File_Buffer3 = Binary_Reader.ReadBytes(Posted_File.ContentLength);
                        fileExit3 = true;
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
                if (item.Selected)
                    interests += item + "|";
            }






            Models.Room b = _db.Rooms.SingleOrDefault(x => x.roomId == roomId);
            if (b != null)
            {
                b.roomTypeId = Convert.ToInt32(roomType.Text);
                b.roomName = roomName.Text;

                b.roomNumber = Convert.ToInt32(roomNo.Text);
                b.roomStatus = roomStatus.Text;
                b.roomPrice = Convert.ToDouble(roomPrice.Text);
                if (fileExit1)
                {
                    b.roomImg = File_Buffer;
                }
                if (fileExit2)
                {
                    b.roomImg2 = File_Buffer2;
                }
                if(fileExit3)
                {
                    b.roomImg3 = File_Buffer3;
                }
                  
               

                b.roomDescription = desc;
                b.roomProvided = interests;
                b.deleted = 0;
                b.roomTotalBooked = 0;

                _db.SaveChanges();
            }

            Response.Redirect("all-room.aspx");


        }
    }
}