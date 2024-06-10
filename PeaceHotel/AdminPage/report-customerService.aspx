<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report-customerService.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.report_customerService" %>

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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>




    <div class="page-wrapper">
        <div class="content mt-5">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Customer Service Reports</h4>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <div class="activity">
                        <div class="activity-box">
                            <ul class="activity-list">
                                <div id="myChart" style="width: 100%; max-width: 600px; height: 500px;"></div>


                                <div style="margin: 50px;">
                                    <h1 style="text-align: center;">Customer Service Reports</h1>
                                    <table id="table_id" class="table table-striped table-hover table-bordered" style="width: 100%">
                                        <thead style="background-color: #b8bfc7">
                                            <tr>
                                                <th>Reply Message</th>
                                                <th>Notification Date</th>
                                                <th>Notification Time</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#table_id').DataTable();
        });

    </script>



    <script>
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Staff', 'Number of request handled'],
                ['Italy', 55],
                ['France', 49],
                ['Spain', 44],
                ['USA', 24],
                ['Argentina', 15]
            ]);

            var options = {
                title: 'Number of request handled by Staff'
            };

            var chart = new google.visualization.BarChart(document.getElementById('myChart'));
            function selectHandler() {
                var selectedItem = chart.getSelection()[0];
                if (selectedItem) {
                    var topping = data.getValue(selectedItem.row, 0);
                    //                    console.log(topping);
                    window.location.replace("displayCustomerServiceReport.jsp?staff=" + topping);
                }
            }

            google.visualization.events.addListener(chart, 'select', selectHandler);

            chart.draw(data, options);
        }
    </script>

    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/script.js"></script>

</asp:Content>


