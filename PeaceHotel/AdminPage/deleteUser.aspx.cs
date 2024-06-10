using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class deleteUser : System.Web.UI.Page
    {
        string[] rolesArray;
        MembershipUserCollection users;

        public void Page_Load()
        {
            Msg.Text = "";

            if (!IsPostBack)
            {

                // Bind users to ListBox.

                users = Membership.GetAllUsers();
                UsersListBox.DataSource = users;
                UsersListBox.DataBind();
            }
        }


        public void RemoveUser_OnClick(object sender, EventArgs args)
        {
            // Verify that a user and a role are selected.

            if (UsersListBox.SelectedItem == null)
            {
                Msg.Text = "Please select a user.";
                return;
            }

            try
            {
                Membership.DeleteUser(UsersListBox.SelectedItem.Value);         
                Msg.Text = "User deleted.";
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            catch (HttpException e)
            {
                Msg.Text = e.Message;
            }


        }



    }
}