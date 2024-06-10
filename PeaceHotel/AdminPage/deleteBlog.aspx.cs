using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class deleteBlog : System.Web.UI.Page
    {
        public int blogId=0;
        public int total=0;
      

        public string userName="";

        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["blogId"] != null)
            {
                blogId = Int32.Parse(Request.QueryString["blogId"]);
                total = Int32.Parse(Request.QueryString["total"]);
                userName = Request.QueryString["userName"];
            }



            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var blog = db.Blogs.Find(blogId);
                db.Blogs.Remove(blog);
                if (total == 2)
                {
                    var blog2 = db.Blogs.Find(blogId-1);
                    db.Blogs.Remove(blog2);
                }
                
                if(total == 3)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                }
                
                if (total == 4)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                    var blog4 = db.Blogs.Find(blogId - 3);
                    db.Blogs.Remove(blog4);
                }

                if (total == 5)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                    var blog4 = db.Blogs.Find(blogId - 3);
                    db.Blogs.Remove(blog4);
                    var blog5 = db.Blogs.Find(blogId - 4);
                    db.Blogs.Remove(blog5);
                }

                if (total == 6)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                    var blog4 = db.Blogs.Find(blogId - 3);
                    db.Blogs.Remove(blog4);
                    var blog5 = db.Blogs.Find(blogId - 4);
                    db.Blogs.Remove(blog5);
                    var blog6 = db.Blogs.Find(blogId - 5);
                    db.Blogs.Remove(blog6);
                }

                if (total == 7)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                    var blog4 = db.Blogs.Find(blogId - 3);
                    db.Blogs.Remove(blog4);
                    var blog5 = db.Blogs.Find(blogId - 4);
                    db.Blogs.Remove(blog5);
                    var blog6 = db.Blogs.Find(blogId - 5);
                    db.Blogs.Remove(blog6);
                    var blog7 = db.Blogs.Find(blogId - 6);
                    db.Blogs.Remove(blog7);
                }

                if (total == 8)
                {
                    var blog2 = db.Blogs.Find(blogId - 1);
                    db.Blogs.Remove(blog2);
                    var blog3 = db.Blogs.Find(blogId - 2);
                    db.Blogs.Remove(blog3);
                    var blog4 = db.Blogs.Find(blogId - 3);
                    db.Blogs.Remove(blog4);
                    var blog5 = db.Blogs.Find(blogId - 4);
                    db.Blogs.Remove(blog5);
                    var blog6 = db.Blogs.Find(blogId - 5);
                    db.Blogs.Remove(blog6);
                    var blog7 = db.Blogs.Find(blogId - 6);
                    db.Blogs.Remove(blog7);
                    var blog8 = db.Blogs.Find(blogId - 7);
                    db.Blogs.Remove(blog8);
                }



                db.SaveChanges();
                Label1.Text = blog.ToString();
                Response.Redirect("~/AdminPage/report-ratingAndReview.aspx");
            }
            catch (Exception exp)
            {
                Label1.Text = "Error";
            }
        }
    }
}