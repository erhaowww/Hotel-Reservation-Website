using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage.Profile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MembershipUser u;
        MembershipUser mu = Membership.GetUser();
        HotelNewEntities db = new HotelNewEntities();
        Guid id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                TextBox2.Text = mu.Email;
                txtName.Text = mu.UserName;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            studentsGrid_UpdateItem(id);
        }

        public void studentsGrid_UpdateItem(Guid userID)
        {
            try
            {
                //SQL Membership Provider does not allow username changes. 
                mu.Email = TextBox2.Text;
 
                Membership.UpdateUser(mu);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User email updated.')", true);
             
            }
            catch (System.Configuration.Provider.ProviderException e)
            {
                Label1.Text = e.Message;
            }

        }



    }
}





//Models.aspnet_Membership em = db.aspnet_Membership.SingleOrDefault(x => x.UserId == id);
//Models.aspnet_Users n = db.aspnet_Users.SingleOrDefault(x => x.UserId == id);
//if (em != null || n != null)
//{
//    TextBox2.Text = em.Email;
//    txtName.Text = n.UserName;

//}

//Guid userId = (Guid)Membership.GetUser().ProviderUserKey;
//Models.aspnet_Users b = db.aspnet_Users.SingleOrDefault(x => x.UserId == userId);


//Models.aspnet_Membership m = db.aspnet_Membership.SingleOrDefault(x => x.UserId == userId);

////TextBox2.Text = b.UserName;
//txtName.Text = b.UserName;
//TextBox2.Text = m.Email;





//    using (HotelNewEntities db = new HotelNewEntities())
//    {

//        Models.aspnet_Users n = db.aspnet_Users.SingleOrDefault(x => x.UserName == txtName.Text);
//        if (n == null)
//        {


//            string name = txtName.Text;

//            Models.aspnet_Users b = db.aspnet_Users.SingleOrDefault(x => x.UserId == userID);

//            if (b != null)
//            {

//                b.UserName = txtName.Text;
//                b.LoweredUserName = txtName.Text;
//                db.SaveChanges();

//            }

//            

//        }
//        else
//        {
//            Label1.Text = "<span style='color: red;margin:auto;'>Name Existed</span>";
//        }

//    }
//}