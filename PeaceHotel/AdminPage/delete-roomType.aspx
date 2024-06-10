<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete-roomType.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.delete_roomType" %>
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

        <div class="main-wrapper">
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <!-- fade modal-->
                    <div id="delete_asset" class="delete-modal" role="dialog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content"style="top:180px;">
                                <form id="form1" runat="server">
                                    <div class="modal-body text-center"> <img src="../assets/img/sent.png" alt="" width="50" height="46">
                                        <h3 class="delete_class">Are you sure want to delete this Room Type<br>
                                            ( ID = <asp:Label ID="id" runat="server" Text="Label"></asp:Label> & 
                                            ROOM TYPE = <asp:Label ID="type" runat="server" Text="Label"></asp:Label> ) ?</h3>
                                        <div class="m-t-20"> <a href="./all-roomType.aspx" class="btn btn-white" data-dismiss="modal">Close</a>
                                            <asp:Button ID="Button1" runat="server" Cssclass="btn btn-danger" Text="Delete" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </form>
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

</asp:Content>

