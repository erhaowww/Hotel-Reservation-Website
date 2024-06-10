using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class payment_billing : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
            Models.aspnet_Users user = _db.aspnet_Users.SingleOrDefault(x => x.UserId == id);
            UserName.Text = user.UserName;
        }

        protected void Return_Click(object sender, EventArgs e)
        {
            int bookingId = int.Parse(Request.QueryString["bookingId"] ?? "");
            int paymentId = int.Parse(Request.QueryString["paymentId"] ?? "");
            Response.Redirect("./Payment.aspx?paymentId="+paymentId+"&bookingId="+bookingId);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int paymentId = int.Parse(Request.QueryString["paymentId"] ?? "");
            Models.Payment payment = _db.Payments.SingleOrDefault(x => x.paymentId == paymentId);
            Billing billing = new Billing();
            billing.paymentId = paymentId;
            billing.realName = FirstName.Text + LastName.Text;
            billing.userName = UserName.Text;
            billing.email = Email.Text;
            billing.address1 = Address.Text;
            billing.address2 = Address2.Text;
            billing.country = Country.Text;
            billing.state = State.Text;
            billing.zipcode = int.Parse(Zip.Text);
            payment.paymentStatus = "success";

            _db.Billings.Add(billing);
            _db.SaveChanges();

            Response.Redirect("./bookedRooms.aspx");
        }
    }
}