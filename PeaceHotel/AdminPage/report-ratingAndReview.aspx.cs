using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class report_ratingAndReview : System.Web.UI.Page
    {

        public int qty2;
        public int count = 0;
        

        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
    
            int rate = 0, count = 0;
            int rateCheck = 0;
            string comment = "", date = "";
            int oneStar = 0, twoStar = 0, threeStar = 0, fourStar = 0, fiveStar = 0;
            try
            {

                var d = from Blog in db.Blogs
                        from aspnet_User in db.aspnet_Users
                        where Blog.UserId == aspnet_User.UserId
                        select Blog;

                if (d != null)
                {
                    Label1.Text = "";
                    foreach (var n in d)
                    {

                        if (n.rate == 1)
                        {
                            oneStar++;
                        }else if(n.rate == 2)
                        {
                            twoStar++;
                        }else if(n.rate == 3)
                        {
                            threeStar++;
                        }else if(n.rate == 4)
                        {
                            fourStar++;
                        }
                        else
                        {
                            fiveStar++;
                        }



                         //< th > Username </ th >
                         //                       < th > Rating </ th >
                         //                       < th > Reviews </ th >
                         //                         < th > Dates </ th >
                         //                         < th > Images </ th >


                        if(count== 0)
                        {
                            Label2.Text += "<tr>    <td>" + n.aspnet_Users.UserName + "</td><td>" + n.rate + "</td><td>" + n.comment + "</td><td>" + n.dateOfTime + "</td><td> ";
                        }

                        if (count <= n.totalLike)
                        {
                            Label2.Text += "<img height='200px' width='200px'  src='data:image/jpg;base64, " + Convert.ToBase64String((byte[])n.imagePost) + "'/>   ";
                            count++;
                        }

                        if(count== n.totalLike)
                        {
                            Label2.Text += "</td> ";
                            Label2.Text += "   <td> <div class='dropdown dropdown-action'><a href = '#' class='action-icon dropdown-toggle' data-toggle='dropdown' aria-expanded='false'><i class='fa fa-ellipsis-v ellipse_color'></i></a> <div class='dropdown-menu dropdown-menu-right'><a class='dropdown-item' href='deleteBlog.aspx?blogId="+n.blogId+"&&total="+count+ "&&userName=" + n.aspnet_Users.UserName+"'><i class='fa fa-pencil-alt m-r-5'></i>Delete</a>         </div>    </div>  </td ></tr>";
                            Label2.Text += "</tr> ";







                            count = 0;
                        }







                        //                    console.log(topping);











                    }

                }
            }

            catch (Exception ex)
            {
                Label1.Text = "";
            }

            Label1.Text += " <script> google.charts.load('current', { 'packages': ['corechart']}); google.charts.setOnLoadCallback(drawChart); function drawChart()  { var data = google.visualization.arrayToDataTable([ ['Product', 'Total number of ratings'], ['1 STAR', "+oneStar+ "], ['2 STAR', " + twoStar + "],  ['3 STAR', " + threeStar + "], ['4 STAR', " + fourStar + "],  ['5 STAR', " + fiveStar + "]  ]);          var options = { title: 'Rating and review reports'          }; var chart = new google.visualization.BarChart(document.getElementById('myChart'));    function selectHandler()";
            Label1.Text += "{     var selectedItem = chart.getSelection()[0];      if (selectedItem)      {         var topping = data.getValue(selectedItem.row, 0);        window.location.replace('displayRatingReviewReport.jsp? product = ' + topping);  }    }  google.visualization.events.addListener(chart, 'select', selectHandler); chart.draw(data, options);      } </script>";

        }



    }
}