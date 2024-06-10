<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-roomType.aspx.cs" Inherits="PeaceHotel.AdminPage.edit_roomType" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" %>

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
        .images {
    display: flex;
    flex-wrap: wrap;
    margin-top: 20px;
}

    .images .img,
    .images .pic {
        flex-basis: 31%;
        margin-bottom: 10px;
        border-radius: 4px;
        max-width: 100px;
    }

    .images .img {
        width: 112px;
        height: 93px;
        background-size: cover;
        margin-right: 10px;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

        .images .img:nth-child(3n) {
            margin-right: 0;
        }

        .images .img span {
            display: none;
            text-transform: capitalize;
            z-index: 2;
        }

        .images .img::after {
            content: '';
            width: 100%;
            height: 100%;
            transition: opacity .1s ease-in;
            border-radius: 4px;
            opacity: 0;
            position: absolute;
        }

        .images .img:hover::after {
            display: block;
            background-color: #000;
            opacity: .5;
        }

        .images .img:hover span {
            display: block;
            color: #fff;
        }

        .images .pic {
            background-color: #848EA1;
            align-self: center;
            text-align: center;
            padding: 40px 0;
            text-transform: uppercase;
            color: #F5F7FA;
            font-size: 12px;
            cursor: pointer;
        }
        /*.col-md-12 .addBtnBox {
            display:flex;
            justify-content:left;
            justify-items:left;
        }*/
        .col-md-12 .addBtnBox .form-control{
            /*float:left;*/
            max-width: 160px;
            color: white;
        }
        #displayControl2,#displayControl3,#displayControl4,#displayControl5,#displayControl6{
            display:none;
        }
    </style>
        <form id="form1" runat="server">
    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title mt-5">Edit Room Type</h3>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-lg-12 table-row">
                            <div class="row formtype">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Room Type ID</label>
                                        <asp:TextBox ID="id" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Room Type</label>
                                        <asp:TextBox ID="inputRoomType" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Total Room</label>
                                        <asp:TextBox ID="roomTotal" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                              
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Description Header 1</label>
                                        <asp:TextBox ID="roomHeading1" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 1</label>
                                        <asp:TextBox ID="roomDescription1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6" id="displayControl2">
                                    <div class="form-group">
                                        <label>Description Header 2</label>
                                        <asp:TextBox ID="roomHeading2" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 2</label>
                                        <asp:TextBox ID="roomDescription2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6" id="displayControl3">
                                    <div class="form-group">
                                        <label>Description Header 3</label>
                                        <asp:TextBox ID="roomHeading3" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 3</label>
                                        <asp:TextBox ID="roomDescription3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6" id="displayControl4">
                                    <div class="form-group">
                                        <label>Description Header 4</label>
                                        <asp:TextBox ID="roomHeading4" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 4</label>
                                        <asp:TextBox ID="roomDescription4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6" id="displayControl5">
                                    <div class="form-group">
                                        <label>Description Header 5</label>
                                        <asp:TextBox ID="roomHeading5" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 5</label>
                                        <asp:TextBox ID="roomDescription5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6" id="displayControl6">
                                    <div class="form-group">
                                        <label>Description Header 6</label>
                                        <asp:TextBox ID="roomHeading6" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label>Description 6</label>
                                        <asp:TextBox ID="roomDescription6" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12" id="btnDisplay">
                            <div class="form-group addBtnBox">
                                <input type="button" class="form-control btn btn-warning buttonAddDescription" name="name" value="Add More" />
                            </div>
                        </div>
                        <asp:Button ID="Button1" CssClass="btn btn-primary buttonedit" runat="server" Text="Update Room Type" OnClick="Button1_Click" />
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
            <script type="text/javascript">
                var i = 2;
                var desc = document.getElementById('<%=roomDescription2.ClientID%>');
                if (!(desc.value.length == 0)) {
                    document.getElementById("displayControl2").style.display = "block";
                    i++
                } else {
                    document.getElementById("displayControl2").style.display = "none";
                }
                desc = document.getElementById('<%=roomDescription3.ClientID%>');
                if (!(desc.value.length == 0)) {
                    document.getElementById("displayControl3").style.display = "block";
                    i++;
                } else {
                    document.getElementById("displayControl3").style.display = "none";
                }
                desc = document.getElementById('<%=roomDescription4.ClientID%>');
                if (!(desc.value.length == 0))  {
                    document.getElementById("displayControl4").style.display = "block";
                    i++;
                } else {
                    document.getElementById("displayControl4").style.display = "none";
                }
                desc = document.getElementById('<%=roomDescription5.ClientID%>');
                if (!(desc.value.length == 0)) {
                    document.getElementById("displayControl5").style.display = "block";
                    i++
                } else {
                    document.getElementById("displayControl5").style.display = "none";
                }
                desc = document.getElementById('<%=roomDescription6.ClientID%>');
                if (!(desc.value.length == 0))  {
                    document.getElementById("displayControl6").style.display = "block";
                    document.getElementById("btnDisplay").style.display = "none";
                } else {
                    document.getElementById("displayControl6").style.display = "none";
                }
                $(".buttonAddDescription").click(function () {
                    document.getElementById("displayControl" + i).style.display = "block";
                    i++;
                    if (i > 6) {
                        document.getElementById("btnDisplay").style.display = "none";

                    }
                });
                
                
                
            </script>
        </form>

</asp:Content>
