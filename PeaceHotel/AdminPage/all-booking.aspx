﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all-booking.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.all_booking" %>

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

    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <div class="mt-5">
                                <h4 class="card-title float-left mt-2">Rooms</h4>
                                <a href="add-room.aspx" class="btn btn-primary float-right veiwbutton">Add Room</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="datatable table table-stripped" id="sort">
                                        <thead>
                                            <tr>
                                                <th>USERNAME</th>
                                                <th>ROOM NO</th>
                                                <th>ROOM TYPE</th>
                                                <th>CHECK-IN DATE</th>
                                                <th>CHECK-OUT DATE</th>
                                                <th>RATING</th>
                                                <th>REVIEW</th>
                                                <th class="text-right">Actions</th>
                                            </tr>

                                        </thead>
                                        <tbody>



                                            <form id="form1" runat="server">

                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


                                                <%--<asp:ListView ID="dlRoom" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="roomId">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("roomId")%></td>
                                                            <td><%# Eval("roomTypeId")%></td>
                                                            <td><img height="75px" width="75px" src='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("roomImg")) %>' /></td>
                                                            <td><%# Eval("roomNumber")%></td>
                                                            <td><%# Eval("roomTotalBooked")%></td>
                                                            <td><%# Eval("roomStatus")%></td>
                                                            <td><%# Eval("roomPrice")%></td>
                                                            <td class="text-right">
                                                                <div class="dropdown dropdown-action">
                                                                    <a href="" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v ellipse_color"></i></a>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <a class="dropdown-item" href="../AdminPage/edit-product.aspx?roomTypeId=<%# Eval("roomId")%>"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a> <a class="dropdown-item" href="../AdminPage/delete-product.aspx"><i class="fas fa-pencil-alt m-r-5"></i>Delete</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:ListView>--%>
                                        </tbody>
                                    </table>
                                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>--%>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([deleted] = @deleted)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="deleted" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>


                                    </form>

                                </div>
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
    </script>form>
</asp:Content>
