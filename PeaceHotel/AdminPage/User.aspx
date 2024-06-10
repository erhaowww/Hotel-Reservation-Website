<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master"  Inherits="PeaceHotel.AdminPage.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <link rel="shortcut icon" type="image/x-icon" href="../images/logo.jpeg">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">

    <style>
        
    </style>

    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <div class="mt-5">
                            <h4 class="card-title float-left mt-2">All Customers</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div class="card-body booking_card">
                            <div class="table-responsive">


















  <table id="example" class="datatable table table-striped table table-hover table-center mb-0">
                                    <thead>
                                        <tr>
                                            <th>Payment ID</th>
                                            <th>User ID</th>
                                            <th>Username</th>
                                            <th>Profile Picture</th>
                                            <th>Room</th>
                                            <th>Room Picture</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th>Date</th>
                                            <th class="text-right">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                
<asp:ListView  ID="dlCustomers2" runat="server" DataSourceID="SqlDataSource1"  >
    <ItemTemplate>

   

                              
                                        <tr>
                                            <td> <%# Eval("UserName")%></td>
                                            <td>1</td>
                                            <td>hao</td>
                                            <td><img src="../assets/img/lee.jpg" style="width:50px;height:50px;"></td>
                                            <td>King room</td>
                                            <td><img src="../assets/img/room1.jfif" style="width:50px;height:50px;"></td>
                                            <td>1</td>

                                            <td>rm888</td>
                                            <td>20/5/2025</td>

                                            <td>
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v ellipse_color"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="edit-customer.aspx"><i class="fa fa-pencil-alt m-r-5"></i>Edit</a>         </div>
                                                </div>
                                            </td>
                                        </tr>
                       

             
    </ItemTemplate>
</asp:ListView>
         </table>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users]"></asp:SqlDataSource>


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
           $(document).ready(function () {
               $('#example').DataTable();
           });
       </script>
</asp:Content>

  