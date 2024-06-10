<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all-staff.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.all_staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <link rel="shortcut icon" type="image/x-icon" href="../images/logo.jpeg">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">

    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <div class="mt-5">
                            <h4 class="card-title float-left mt-2">All Staff</h4>
                            <a href="../AdminPage/add-staff.aspx" class="btn btn-primary float-right veiwbutton">Add Staff</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div class="card-body booking_card">
                            <div class="table-responsive">
                                <table class="datatable table table-striped table table-hover table-center mb-0" id="sort">
                                    <thead>
                                        <tr>
                                            <th>Staff Name</th>
                                            <th>Staff ID</th>
                                            <th>Password</th>
                                            <th>Email</th>
                                            <th>Phone Number</th>
                                            <th class="text-right">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a href="profile.jsp" class="avatar avatar-sm mr-2">
                                                        <img class="avatar-img rounded-circle" src="../assets/img/lee.jpg" alt="User Image"></a>
                                                    <a href="profile.jsp">haoloha</a>
                                                </h2>
                                            </td>
                                            <td>1</td>
                                            <td>*12#45%$%$^&224</td>
                                            <td>hao888@gmail.com</td>
                                            <!--<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="ea9e85878793888f98848b86aa8d878b8386c4898587">[email&#160;protected]</a>-->
                                            <td>011-12894565</td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v ellipse_color"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="../AdminPage/edit-staff.aspx"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a> <a class="dropdown-item" href="../AdminPage/delete-staff.aspx"><i class="fas fa-pencil-alt m-r-5"></i>Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/js/jquery-3.5.1.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/moment.min.js"></script>
    <script src="../assets/js/select2.min.js"></script>
    <script src="../assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/plugins/datatables/datatables.min.js"></script>
    <script src="../assets/js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'
            });
        });
        $(document).ready(function () {
            $('#sort').DataTable();
        });
    </script>

</asp:Content>

