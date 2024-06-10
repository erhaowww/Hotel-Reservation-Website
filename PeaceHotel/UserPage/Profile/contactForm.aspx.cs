using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel
{
    public partial class showPss : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        public string str;
        public string name;
        protected void Page_Load(object sender, EventArgs e)
        {


 
        }







        protected void Button1_Click1(object sender, EventArgs e)
        {

            //try
            //{

            MembershipUser mu = Membership.GetUser();
            using (System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage())
                {
          
                    mail.From = new MailAddress(mu.Email.ToString());
                    mail.To.Add("jeraldpresonal@gmail.com");
                    mail.Subject = TextBox1.Text;
                    mail.Body = "<h1>" + subject.Value.ToString() + "</h1>";
                    mail.IsBodyHtml = true;
                    mail.Attachments.Add(new Attachment("D:\\PeaceHotel\\PeaceHotel\\UserPage\\assets\\images\\Slide1.jpg"));

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new NetworkCredential("leeszeyen13@gmail.com", "jipaewqqrmvvmgza");
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sended Successfully')", true);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sended Successfully')", true);
                }
                }


            //}
            //catch (Exception ex)
            //{

            //}
        }
    }
}