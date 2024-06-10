<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment-reply.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.comment_reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link rel="shortcut icon" type="image/x-icon" href="../images/logo.png">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/feathericon.min.css">
    <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    </head>


    
        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title mt-5">Reply Comment</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">


                        <%
//    String commentId = (String)session.getAttribute("successText");

                        %>


                        <form method="get" action="NotificationDetailAdd">
                            <div class="row formtype">
                                <div class="col-md-12">
                                    <%--<%= commentId %>--%>
                                    <!--                                     <input class="form-control" type="text" name="commentId" style="display:none;" value="">-->
                                    <input class="form-control" type="text" name="userId" style="display: none;" value="">
                                    <input class="form-control" type="text" name="staffId" style="display: none;" value="">


                                    <div class="form-group">
                                        <label>To:</label>
                                        <input class="form-control" type="text" name="name" disabled value="Erhao">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Comment About:</label>
                                        <input class="form-control" type="text" name="about" disabled value="">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Comment:</label>
                                        <textarea class="form-control" type="text" rows="5" name="comment" disabled></textarea>
                                    </div>
                                </div>



                                <input class="form-control" type="text" name="status" style="display: none;" value="message">
                                <input class="form-control" type="text" name="sender" style="display: none;" value="Staff">

                                <div class="col-md-12">
                                    <label>Reply</label>
                                    <textarea class="form-control" rows="5" id="message" name="message"></textarea>
                                </div>



                            </div>
                    </div>
                </div>

                <input type="submit" class="btn btn-primary buttonedit" value="Send">
            </div>
        </div>

    </form>
    </div>


    <script src="assets/js/jquery-3.5.1.min.js"></script>

    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <script src="assets/js/select2.min.js"></script>

    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/plugins/raphael/raphael.min.js"></script>

    <script src="assets/js/bootstrap-datetimepicker.min.js"></script>

    <script src="assets/js/script.js"></script>
    <script>
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'

            });
        });
    </script>

</asp:Content>


