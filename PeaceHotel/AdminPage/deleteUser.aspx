<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteUser.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.deleteUser" %>


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

    <style>
        form#PageForm {
    margin: auto;
    margin-top: 200px;
}
        select#ContentPlaceHolder1_RolesListBox {
    width: 200px;
}
        select#ContentPlaceHolder1_UsersListBox {
    width: 200px;
}
    </style>

        <div class="main-wrapper">
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                  
                            
                            <form runat="server" id="PageForm">
                                <h3>Delete User</h3>
                                <asp:Label id="Msg" ForeColor="maroon" runat="server" />
                                <br />
                                <table cellpadding="3" border="0">
                                    <tr>
                                        <td valign="top">Users:</td>
                                        <td valign="top">
                                            <asp:ListBox id="UsersListBox" DataTextField="Username"
                                                Rows="8" runat="server" />
                                        </td>
                                        <td valign="top">
                                            <asp:Button Text="Delete user" id="AddUserButton"
                                                runat="server" OnClick="RemoveUser_OnClick" />
                                        </td>
                                    </tr>
                                </table>
                            </form>

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
        <script>
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'
                });
            });
            $("#product-form").submit(function () {
                var sizeChecked = $("[name='size']:checked").length > 0;
                if (!sizeChecked) {
                    alert("Please check at least one checkbox on Product Size");
                    return false;
                }
            });
            var loadFile = function (event) {
                var image = document.getElementById('output');
                image.src = URL.createObjectURL(event.target.files[0]);
            };
        </script>
</asp:Content>

