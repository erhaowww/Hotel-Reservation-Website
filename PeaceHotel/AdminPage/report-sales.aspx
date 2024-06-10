<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report-sales.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.report_sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">

    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <%
        string monthSelected = Request["month"];
        string monthInEng = "";

    %>


    <div class="page-wrapper">
        <div class="content mt-5">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Sales Reports</h4>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <div class="activity">
                        <div class="activity-box">
                            <ul class="activity-list">
                                <canvas id="myChart" style="width: 100%; max-width: 600px"></canvas>
                                <p>Total Sales: </p>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                                <% if (monthSelected != null)
                                    {
                                        if (monthSelected.Equals("01"))
                                            monthInEng = "Jan";
                                        else if (monthSelected.Equals("02"))
                                            monthInEng = "Feb";
                                        else if (monthSelected.Equals("03"))
                                            monthInEng = "Mar";
                                        else if (monthSelected.Equals("04"))
                                            monthInEng = "Apr";
                                        else if (monthSelected.Equals("05"))
                                            monthInEng = "May";
                                        else if (monthSelected.Equals("06"))
                                            monthInEng = "June";
                                        else if (monthSelected.Equals("07"))
                                            monthInEng = "July";
                                        else if (monthSelected.Equals("08"))
                                            monthInEng = "Aug";
                                        else if (monthSelected.Equals("09"))
                                            monthInEng = "Sept";
                                        else if (monthSelected.Equals("10"))
                                            monthInEng = "Oct";
                                        else if (monthSelected.Equals("11"))
                                            monthInEng = "Nov";
                                        else
                                            monthInEng = "Dec";
                                            %>

                                <div style="margin: 50px;">
                                    <h1 style="text-align: center;">Sales Reports for <%= monthInEng %></h1>
                                    <table id="table_id" class="table table-striped table-hover table-bordered" style="width: 100%">
                                        <thead style="background-color: #b8bfc7">
                                            <tr>
                                                <th>Name</th>
                                                <th>Payment Method</th>
                                                <th>Payment Total</th>
                                                <th>Payment Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <%} %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

    <script>
        //var xValues = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];
        //var yValues = [10, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        //var barColors = ["red", "green", "blue", "orange", "brown", "yellow", "purple", "gray", "pink", "cyan", "black", "lightgreen"];

        //new Chart("myChart", {
        //    type: "bar",
        //    data: {
        //        labels: xValues,
        //        datasets: [{
        //            backgroundColor: barColors,
        //            data: yValues
        //        }]
        //    },
        //    options: {
        //        legend: { display: false },
        //        title: {
        //            display: true,
        //            text: "Sales Reports "
        //            },

        //            onClick: function (c, i) {
        //                e = i[0];
        //                console.log(e._index);
        //                var x_value = this.data.labels[e._index];
        //                var y_value = this.data.datasets[0].data[e._index];
        //                console.log(x_value);
        //                console.log(y_value);
        //                if (e._index < 9)
        //                    window.location.replace("report-sales.aspx?month=0" + (e._index + 1));
        //                else
        //                    window.location.replace("report-sales.aspx?month=" + (e._index + 1));

        //            }
        //        }

        //    });
    </script>

    <script>
        $(document).ready(function () {
            $('#table_id').DataTable();
        });

    </script>

    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/script.js"></script>

</asp:Content>


