using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class delete_customer : System.Web.UI.Page
    {
        HotelNewEntities _db = new HotelNewEntities();
        public int rId;
        public int rNum;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["paymentId"] != null)
            {
                rId = int.Parse(Request.QueryString["paymentId"] ?? "");
                rNum = int.Parse(Request.QueryString["billingId"] ?? "");
            }




        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            Models.Payment p = _db.Payments.SingleOrDefault(x => x.paymentId == rId);
            Models.Billing b = _db.Billings.SingleOrDefault(x => x.paymentId == rId);
            if (p != null)
            {
                p.deleted = 1;
                var bill = _db.Billings.Find(b.billingId);
                _db.Billings.Remove(bill);
                _db.SaveChanges();
            }
         
            Response.Redirect("viewSales.aspx");
        }
    }
}