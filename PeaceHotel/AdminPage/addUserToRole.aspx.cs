using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class addUserToRole : System.Web.UI.Page
    {
        string[] rolesArray;
        MembershipUserCollection users;

        public void Page_Load()
        {

            lblCount.Text = "Total user visit : "+Application["VisitorsCount"].ToString();
            Msg.Text = "";

            if (!IsPostBack)
            {
                // Bind roles to ListBox.

                rolesArray = Roles.GetAllRoles();
                RolesListBox.DataSource = rolesArray;
                RolesListBox.DataBind();

                // Bind users to ListBox.

                users = Membership.GetAllUsers();
                UsersListBox.DataSource = users;
                UsersListBox.DataBind();
            }
        }


        public void AddUser_OnClick(object sender, EventArgs args)
        {
            // Verify that a user and a role are selected.

            if (UsersListBox.SelectedItem == null)
            {
                Msg.Text = "Please select a user.";
                return;
            }

            if (RolesListBox.SelectedItem == null)
            {
                Msg.Text = "Please select a role.";
                return;
            }

            // Add the user to the selected role.

            try
            {
                Roles.AddUserToRole(UsersListBox.SelectedItem.Value, RolesListBox.SelectedItem.Value);
                Msg.Text = "User added to Role.";
            }
            catch (HttpException e)
            {
                Msg.Text = e.Message;
            }
        }
    }
}