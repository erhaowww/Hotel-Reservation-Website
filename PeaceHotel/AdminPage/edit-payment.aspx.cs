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
    public partial class edit_customer : System.Web.UI.Page
    {

        HotelNewEntities _db = new HotelNewEntities();
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                 id = int.Parse(Request.QueryString["paymentId"] ?? "");
            }
            catch (Exception ex)
            {

            }
            if (!IsPostBack)
            {
                Models.Payment p = _db.Payments.SingleOrDefault(x => x.paymentId == id);
                Models.Billing b = _db.Billings.SingleOrDefault(x => x.paymentId == id);
             
                if (p != null && b != null)
                {
                    userName.Text = b.realName;
                    email.Text = b.email;
                    status.Text = p.paymentStatus;
                    if (p.paymentMethod.Equals("card"))
                    {
                        method.SelectedIndex = 0;
                    }
                    else
                    {
                        method.SelectedIndex = 1;   
                    }

                    if (p.paymentStatus.Equals("Success"))
                    {
                        status.SelectedIndex = 0;
                    }
                    else
                    {
                        status.SelectedIndex = 1;
                    }
                }
            }
  
 


        }


        protected void submitBtn_Click(object sender, EventArgs e)
        {

            Models.Payment p = _db.Payments.SingleOrDefault(x => x.paymentId == id);
            Models.Billing b = _db.Billings.SingleOrDefault(x => x.paymentId == id);
            if (b != null)
            {
                b.realName = userName.Text;
                b.email = email.Text;
                p.paymentStatus = status.Text;
                p.paymentMethod = method.SelectedItem.Value;
                _db.SaveChanges();
            }

            Response.Redirect("viewSales.aspx");


        }
    }
}

