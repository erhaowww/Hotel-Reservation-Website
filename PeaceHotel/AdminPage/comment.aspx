<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="shortcut icon" type="image/x-icon" href="../images/logo.png">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">

    <div class="page-wrapper">
        <div class="content mt-5">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Comments</h4>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <div class="activity">
                        <div class="activity-box">
                            <ul class="activity-list">

                                <p>


                                    <li class="activity-list_li">
                                        <div class="activity-user">
                                            <a href="profile.html" title="hao" data-toggle="tooltip" class="avatar">
                                                <img alt="" src="../assets/img/lee.jpg" class="img-fluid rounded-circle">
                                            </a>
                                        </div>
                          
                                        <span class="fa fa-star checked" style="color: orange;"></span>
                                        <span class="fa fa-star checked" style="color: orange;"></span>
                                        <span class="fa fa-star checked" style="color: orange;"></span>
                                        <span class="fa fa-star checked" style="color:#000;"></span>
                                        <span class="fa fa-star checked" style="color: #000;"></span>
                                   
                                        <div class="activity-content">
                                            <div class="timeline-content">
                                                <a href="profile.html" class="name">Name</a>  Review <a href="#">About Hao</a>
                                                <a class="activity-delete" href="" title="Delete">&times;</a> <a href="comment-reply.aspx" class="btn btn-primary">Reply</a>
                                            </div>

                                        </div>
                                    </li>



                            </ul>
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
    <script>
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'
            });
        });
    </script>
</asp:Content>
