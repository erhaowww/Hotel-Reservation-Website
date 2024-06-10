<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteBlog.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.deleteBlog" %>

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
              input#ContentPlaceHolder1_Button1{
                      background: #f62d51;
    border: 1px solid;
    width: 76px;
    height: 36px;
    border-radius: 5px;
    color: white;
              }
          </style>
    <form id="Delete" runat="server">

        <div class="main-wrapper">
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <!-- fade modal-->
                    <div id="delete_asset" class="delete-modal" role="dialog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content"style="top:180px;">
                                <form action="" method="post">
                                    <div class="modal-body text-center"> <img src="../assets/img/sent.png" alt="" width="50" height="46">
                                        <h3 class="delete_class">Are you sure want to delete this Blog<br>(ID = <%= blogId.ToString() %> Name = "<%= userName.ToString() %>")?</h3>
                                        <div class="m-t-20"> <a href="report-ratingAndReview.aspx" class="btn btn-white" data-dismiss="modal">Close</a>
                                            <%--<button type="submit" onclick="DeleteBlog" class="btn btn-danger">Delete</button>--%>

                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                                            <asp:Button ID="Button1" class="btn" runat="server" Text="Delete" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div
            </form>
     <%--PostBackUrl="~/AdminPage/report-ratingAndReview.aspx"--%>
          </asp:Content>


  