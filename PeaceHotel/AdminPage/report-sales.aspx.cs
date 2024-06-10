using PeaceHotel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeaceHotel.AdminPage
{
    public partial class report_sales : System.Web.UI.Page
    {
        HotelNewEntities db = new HotelNewEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            double[] monthlySales = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
            string year = DateTime.Now.Year.ToString();
            try
            {
                var comic = from aspnet_Users in db.aspnet_Users
                            from Payment in db.Payments
                            where Payment.UserId == aspnet_Users.UserId
                            select Payment;

                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";

                if (Request["month"] != null)
                {
                    string value = Request["month"];
                    string monthV1 = "";
                    string monthV2 = "";
                    if (value.Equals("01") || value.Equals("1"))
                    {
                        monthV1 = "01";
                        monthV2 = "1";
                    }
                    else if (value.Equals("02") || value.Equals("2"))
                    {
                        monthV1 = "02";
                        monthV2 = "2";
                    }
                    else if (value.Equals("03") || value.Equals("3"))
                    {
                        monthV1 = "03";
                        monthV2 = "3";
                    }
                    else if (value.Equals("04") || value.Equals("4"))
                    {
                        monthV1 = "04";
                        monthV2 = "4";
                    }
                    else if (value.Equals("05") || value.Equals("5"))
                    {
                        monthV1 = "05";
                        monthV2 = "5";
                    }
                    else if (value.Equals("06") || value.Equals("6"))
                    {
                        monthV1 = "06";
                        monthV2 = "6";
                    }
                    else if (value.Equals("07") || value.Equals("7"))
                    {
                        monthV1 = "07";
                        monthV2 = "7";
                    }
                    else if (value.Equals("08") || value.Equals("8"))
                    {
                        monthV1 = "08";
                        monthV2 = "8";
                    }
                    else if (value.Equals("09") || value.Equals("9"))
                    {
                        monthV1 = "09";
                        monthV2 = "9";
                    }
                    else if (value.Equals("10"))
                    {
                        monthV1 = "10";
                        monthV2 = "10";
                    }
                    else if (value.Equals("11"))
                    {
                        monthV1 = "11";
                        monthV2 = "11";
                    }
                    else
                    {
                        monthV1 = "12";
                        monthV2 = "12";
                    }


                    //Response.Write("<script>console.log(111" + value + ")</script>");
                    if (comic != null)
                    {
                        foreach (var n in comic)
                        {
                            DateTime dt = (DateTime)n.paymentDate;

                            if (dt.Month.ToString().Equals(monthV1) || dt.Month.ToString().Equals(monthV2))
                            {
                                //Response.Write("<script>console.log(000" + value + ")</script>");
                                Label1.Text += "<tr>";
                                Label1.Text += "<td>" + n.aspnet_Users.UserName + "</td>";
                                Label1.Text += "<td>" + n.paymentMethod + "</td>";
                                Label1.Text += "<td>" + n.paymentTotal + "</td>";
                                Label1.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.paymentDate) + "</td>";
                                Label1.Text += "</tr>";
                            }

                        }
                    }
                }


                if (comic != null)
                {
                    foreach (var n in comic)
                    {
                        DateTime dt = (DateTime)n.paymentDate;
                        if (dt.Year.ToString().Equals(year))
                        {
                            //compare month to do monthly sales report
                            if (dt.Month.ToString().Equals("01") || dt.Month.ToString().Equals("1"))
                            {
                                monthlySales[0] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("02") || dt.Month.ToString().Equals("2"))
                            {
                                monthlySales[1] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("03") || dt.Month.ToString().Equals("3"))
                            {
                                monthlySales[2] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("04") || dt.Month.ToString().Equals("4"))
                            {
                                monthlySales[3] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("05") || dt.Month.ToString().Equals("5"))
                            {
                                monthlySales[4] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("06") || dt.Month.ToString().Equals("6"))
                            {
                                monthlySales[5] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("07") || dt.Month.ToString().Equals("7"))
                            {
                                monthlySales[6] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("08") || dt.Month.ToString().Equals("8"))
                            {
                                monthlySales[7] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("09") || dt.Month.ToString().Equals("9"))
                            {
                                monthlySales[8] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("10"))
                            {
                                monthlySales[9] += Convert.ToDouble(n.paymentTotal);
                            }
                            else if (dt.Month.ToString().Equals("11"))
                            {
                                monthlySales[10] += Convert.ToDouble(n.paymentTotal);
                            }
                            else
                            {
                                monthlySales[11] += Convert.ToDouble(n.paymentTotal);
                            }

                            monthlySales[12] += Convert.ToDouble(n.paymentTotal);
                        }

                        //if (dt.Month.ToString().Equals(value))
                        //{
                        //    Label1.Text += "<tr>";
                        //    Label1.Text += "<td>" + n.aspnet_Users.UserName + "</td>";
                        //    Label1.Text += "<td>" + n.paymentMethod + "</td>";
                        //    Label1.Text += "<td>" + n.paymentTotal + "</td>";
                        //    Label1.Text += "<td>" + String.Format("{0:dd/MM/yyyy}", n.paymentDate) + "</td>";
                        //    Label1.Text += "</tr>";
                        //}

                    }
                }
            }

            catch (Exception ex)
            {
                Label1.Text = "";
            }

            Label2.Text = monthlySales[12].ToString();
            Label3.Text += "<script> var xValues = [\"Jan\", \"Feb\", \"Mar\", \"Apr\", \"May\", \"June\", \"July\", \"Aug\", \"Sept\", \"Oct\", \"Nov\", \"Dec\"];";
            Label3.Text += "var yValues = [" + monthlySales[0] + "," + monthlySales[1] + "," + monthlySales[2] + "," + monthlySales[3] + "," + monthlySales[4] + "," + monthlySales[5] + "," + monthlySales[6] + "," + monthlySales[7] + "," + monthlySales[8] + "," + monthlySales[9] + "," + monthlySales[10] + "," + monthlySales[11] + "];";
            Label3.Text += "var barColors = [\"red\", \"green\", \"blue\", \"orange\", \"brown\", \"yellow\", \"purple\", \"gray\", \"pink\", \"cyan\", \"black\", \"lightgreen\"];";
            Label3.Text += "new Chart(\"myChart\", {type: \"bar\",data:{labels: xValues,datasets:[{backgroundColor: barColors,data: yValues}]},options:{legend: { display: false },title:{display: true,text: \"Sales Reports \"},onClick: function(c, i) {e = i[0];console.log(e._index);var x_value = this.data.labels[e._index];var y_value = this.data.datasets[0].data[e._index];if (e._index < 9)window.location.replace(\"report-sales.aspx?month=0\" + (e._index + 1));elsewindow.location.replace(\"report-sales.aspx?month=\" + (e._index + 1));}}}); </script>";
        }
    }
}