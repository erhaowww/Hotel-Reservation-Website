<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add-staff.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.add_staff" %>

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
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title mt-5">Add Staff</h3>
                            </div>
                        </div>
                    </div>
                    <form action="StaffAdd" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row formtype">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff ID</label>
                                            <input class="form-control" type="num" name="id" disabled placeholder="auto generated">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff Name</label>
                                            <input class="form-control" type="text" name="name" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control" name="password" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" type="email" name="email" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input type="text" name="phoneNum" class="form-control" required placeholder="012-34567890" pattern="[0][1][0-9]-[0-9]{7,8}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Staff Image</label>
                                            <input class="form-control" type="file" id="file" name="image" accept="image/gif, image/jpeg, image/png" id="file" onchange="loadFile(event)" style="cursor: pointer;" required>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div>
                                                <img id="output" width="150px" height="150px" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary buttonedit">Add Staff</button>
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

