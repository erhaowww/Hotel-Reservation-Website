using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.UserPage
{
    public partial class Register : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }



        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }




        protected void CreateUserWizard1_CreatedUser1(object sender, EventArgs e)
        {

            //HotelNewEntities db = new HotelNewEntities();
            //        User i = new User
            //        {
            //            name = CreateUserWizard1.UserName,
            //            //password = CreateUserWizard1.Password,
            //            email = CreateUserWizard1.Email,
            //        };
            //        db.Users.Add(i);
            //        db.SaveChanges();
                    Response.Redirect("Login.aspx");
                

            
        }
    }
}


//string pass = txtpassword.Text;
//string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "SHA1");
//User source = db.Users.SingleOrDefault(x => x.email == txtEmail.Text && x.password == hashedPassword);

//if (source != null)
//{
//    Session["userID"] = source.userID;
//    Session["registerTime"] = source.registerTime;

//    if (source.role == '1')
//    {
//        Response.Redirect("AdminPage/adminHome.aspx");
//    }
//    else
//    {
//        if (source.registerTime == null)
//        {
//            Response.Redirect("Payment.aspx?uid=" + source.userID);
//        }
//        Response.Redirect("UserPage/HomePage.aspx");
//    }
//}
//else
//{
//    error.Text = "Wrong email or password";
//}


//MembershipUser mu = Membership.GetUser(CreateUserWizard1.UserName);

//string userId = mu.ProviderUserKey.ToString();
////Response.Write(id);
////int id = Int32.Parse(userId);

//User user = db.Users.SingleOrDefault(x => x.name == CreateUserWizard1.UserName && x.email == CreateUserWizard1.Email && x.password == CreateUserWizard1.Password);

////TryUpdateModel(user);
//if (ModelState.IsValid)
//{
//    // Save changes here
//    //HotelNewEntities2 _db = new HotelNewEntities2();
//    db.Users.Add(user);
//    db.SaveChanges();
//    Response.Redirect("~/UserPage/Home.aspx");
//}