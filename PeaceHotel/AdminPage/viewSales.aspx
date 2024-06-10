<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewSales.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.viewSales" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server">

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
                                <h4 class="card-title float-left mt-2">Payment</h4>

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
                                                <th>PAYMENTID</th>
                                                <th>REALNAME</th>
                                                <th>EMAIL</th>
                                                <th>PAYMENT-DATE</th>
                                                <th>PAYMENT-TOTAL</th>
                                                <th>PAYMENT-METHOD</th>
                                                <th>PAYMENT-STATUS</th>
                                                <th class="text-right">ACTIONS</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                                <asp:ListView ID="dlRoom" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="paymentId">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("paymentId")%></td>
                                                            <td><%# Eval("realName")%></td>
                                                             <td><%# Eval("email")%></td>
                                                           <td><%# Eval("paymentDate") %></td>
                                                            <td><%# Eval("paymentTotal")%></td>
                                                            <td><%# Eval("paymentMethod")%></td>
                                                            <%-- paypal card --%>
                                                            <td><%# Eval("paymentStatus")%></td>
                                                            <%-- success cancel --%>
                                                            <td class="text-right">
                                                                <div class="dropdown dropdown-action">
                                                                    <a href="" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v ellipse_color"></i></a>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <a class="dropdown-item" href="../AdminPage/edit-payment.aspx?paymentId=<%#Eval("paymentId")%>"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a> <a class="dropdown-item" href="../AdminPage/delete-customer.aspx?paymentId=<%#Eval("paymentId")%>&billingId=<%#Eval("billingId")%>"><i class="fas fa-pencil-alt m-r-5"></i>Delete</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                        </tbody>
                                    </table>
                                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>--%>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE ([deleted] = @deleted)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="deleted" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Billing INNER JOIN Payment ON Billing.paymentId = Payment.paymentId"></asp:SqlDataSource>
                                    <br />
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
    </script>
    </form>
</asp:Content>
