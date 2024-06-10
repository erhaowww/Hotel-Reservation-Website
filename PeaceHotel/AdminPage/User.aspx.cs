using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PeaceHotel.AdminPage
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //DataTable dt = this.GetData();
                //dlCustomers.DataSource = dt;
                //dlCustomers.DataBind();
            }
        }

        private DataTable GetData()
        {
            string conString = ConfigurationManager.ConnectionStrings["HotelNew"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_Users"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}