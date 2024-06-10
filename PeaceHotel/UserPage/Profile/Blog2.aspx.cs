using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel
{
    public partial class Test : System.Web.UI.Page
    {

        public int qty2;
        public int count = 0;


        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Form.Enctype = "multipart/form-data";
            int rate = 0, count = 0;
            int rateCheck = 0;
            string comment = "", date = "";
            int hr = 0;
            try
            {

                var d = from Blog in db.Blogs
                        from aspnet_User in db.aspnet_Users
                        where Blog.UserId == aspnet_User.UserId
                        select Blog;
         
                if (d != null)
                {
                    Label1.Text = "";
                    foreach (var n in d)
                    {

                        if (hr == 1 && count == 0)
                        {
                            Label1.Text += "<hr>";
                        }

                        if (count == 0 || n.totalLike==0)
                        {


                            Label1.Text += "  <div class='media-block'>  <div class='media-body'> <div class='mar-btm'> <div id = 'container'>  <div class='char'> <a class='btn-link text-semibold media-heading box-inline'>" + n.aspnet_Users.UserName + "</a> </div>  <div class='char float-right'> ";

                            Label1.Text += "<div id = 'rating-display-container'>";
                            for (int i = 0; i < 5; i++)
                            {
                                if (i < n.rate)
                                {
                                    Label1.Text += " <div class='rating-display'></div>";
                                }

                            }
                            Label1.Text += "</div></div></div> <span class='time text-muted text-sm'></i>" + n.dateOfTime + "</span> <p>" + n.comment + "</p> <div class='imagePost' style='display: flex;'>";

                            hr = 1;
                            count = 0;
                        }
                        else if(n.totalLike == 0)
                        {

                        }
                        

                        if (count <= n.totalLike && n.totalLike != 0 && n.imagePost!=null)
                        {
                            Label1.Text += "    <img height='500px' width='500px' class='img-responsive thumbnail' src='data:image/jpg;base64, " + Convert.ToBase64String((byte[])n.imagePost) + "'/>   ";

                            count++;
                        }
                        
                       


                        if (count == n.totalLike || n.totalLike == 0)
                        {
                            Label1.Text += "</div> <div class='pad-ver'><div class='btn-group'><span class='detail'> <a class='btn btn-default btn-hover-success'> <button runat='server' id ='Button2" + n.blogId + "' onserverclick = 'Button1_Click'><i class='fa fa-thumbs-up' class='totalLike'> 2</i></button></a>  <button type = 'button' class='replybutton" + n.blogId + "' data-commentbox='panel1'>Reply</button><br/><br/> </span></ div ><div class='replybox" + n.blogId + "' id='panel1' style='display:none'>";

                            Label1.Text += "<textarea cols = '35' rows='8'></textarea><br/>    <button class='btn btn-default btn-hover-success'>Send</button></div>  <button type = 'button' style='color:#065fd4;' class='replyDisplay" + n.blogId + "' data-commentbox='panel2'><i class='fa fa-caret-down' style='font-size:15px'></i> View 2 Reply</button><br/><br/> <div class='reply' id='panel2' style='display:none;'><div class='media-block'><div class='media-body'><div class='mar-btm'> </div ><p> Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>  <div class='pad-ver'>";


                            Label1.Text += "<div class='btn-group'></div></div></div> </div> <div class='media-block'></a> <div class='media-body'> <div class='mar-btm'> <a class='btn-link text-semibold media-heading box-inline'>Doctor T<span class='time text-muted text-sm'></i> 11 min ago</span></a> </div><p> Duis autem vel eum iriure dolor in hendrerit in vulputate ?</p>    <div class='pad-ver'>     <div class='btn-group'>  </div></div> </div> </div>   </div>  </div></div>";


                            //Label3.Text += "       <script> $(function() {";
                            //Label3.Text += "  var toggleR = 0;   $('.replybutton" + n.blogId + "').on('click', function() {  if (toggleR == 0)     {  $('.replybox" + n.blogId + "').hide(); var commentboxId = $(this).attr('data-commentbox');  $('#' + commentboxId).toggle(); toggleR = 1; }  else {  $('.replybox" + n.blogId + "').hide();    toggleR = 0;        } }); ";
                            //Label3.Text += "  });      </script> ";

                            count = 0;
                        }





                        //< button runat = 'server' id = 'Button3' onserverclick = 'Button1_Click' class='btn btn-mini'><i class='fa fa-thumbs-up'></i></button>








                    }

                }
        }

            catch (Exception ex)
            {
                Label1.Text = "Error";
            }

}


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dd");
        }



        protected void BtnUploadFile_Click(object sender, EventArgs e)
        {
            Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            HttpFileCollection File_Collection = Request.Files;
            int c = 0;
            using (HotelNewEntities SampleDb = new HotelNewEntities())
            {

                foreach (string File_Uploader in File_Collection)
                {
                    c++;
               
                }
                if(c != 0)
                {
                    foreach (string File_Uploader in File_Collection)
                    {
                     
                        HttpPostedFile Posted_File = File_Collection[File_Uploader];
                        if (Posted_File.ContentLength > 0)
                        {
                            BinaryReader Binary_Reader = new BinaryReader(Posted_File.InputStream);
                            byte[] File_Buffer = Binary_Reader.ReadBytes(Posted_File.ContentLength);

                          
                                SampleDb.Blogs.Add(new Blog
                            {
                                UserId = id,
                                rate = Int32.Parse(ratingcircle2.Text.ToString()),
                                comment = TextArea1.Value,
                                
                                totalLike = c,

                                dateOfTime = DateTime.UtcNow.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture),
                                imagePost = File_Buffer
                            });
                        }
                        else
                        {

                            SampleDb.Blogs.Add(new Blog
                            {
                                UserId = id,
                                rate = Int32.Parse(ratingcircle2.Text.ToString()),
                                comment = TextArea1.Value,
                                totalLike = 0,

                                dateOfTime = DateTime.UtcNow.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture),

                            });
                            break;
                        }

                    }
                }
                else
                {
                    SampleDb.Blogs.Add(new Blog
                    {
                        UserId = id,
                        rate = Int32.Parse(ratingcircle2.Text.ToString()),
                        comment = TextArea1.Value,
                        totalLike = 0,

                        dateOfTime = DateTime.UtcNow.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture),

                    });
                }
                
                
                SampleDb.SaveChanges();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }


    }
}