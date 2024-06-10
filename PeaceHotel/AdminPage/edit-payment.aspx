<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-payment.aspx.cs" MasterPageFile="~/AdminPage/MasterPage/Nav.Master" Inherits="PeaceHotel.AdminPage.edit_customer" %>

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
            background-size: cover;
        }

        .col-md-12 .addBtnBox .form-control {
            /*float:left;*/
            max-width: 160px;
            color: white;
        }

        .error{
            color:red;
        }
    </style>

 <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">
                <form id="form1" runat="server">
                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title mt-5">Update Payment</h3>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-lg-12 table-row">
                            <div class="row formtype">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>User Real Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" Display="Dynamic" ErrorMessage="Required input User Real Name." CssClass="error">*</asp:RequiredFieldValidator>
                                        <asp:TextBox ID="userName" CssClass="form-control" runat="server" Text=''></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Required input Email." CssClass="error">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format @"  CssClass="error"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="email" CssClass="form-control" runat="server" Text=''></asp:TextBox>
                                    </div>
                                </div>
                                       
                                <div class="col-md-12">
                                    <div class="form-group">
                                           <label>Payment Status</label>
                                        <asp:DropDownList ID="status" runat="server" CssClass="form-control" >
                                             <asp:ListItem>Success</asp:ListItem>  
                                             <asp:ListItem>Cancel</asp:ListItem>  
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                                

                                         
                                    

                             
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>PAYMENT METHOD</label>
                                        <asp:DropDownList ID="method" runat="server" CssClass="form-control" >
                                             <asp:ListItem>card</asp:ListItem>  
                                             <asp:ListItem>paypal</asp:ListItem>  
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                
                                <%--<div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room No</label>
                                        <asp:TextBox ID="roomNo" CssClass="form-control" runat="server" Text=''></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Status</label>
                                        <asp:DropDownList ID="roomStatus" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="available">Available</asp:ListItem>
                                            <asp:ListItem Value="NOTavailable">Not Available</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label>Room Price</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="roomPrice" CssClass="form-control" runat="server" Text=''></asp:TextBox>
                                        <div class="input-group-append">
                                            <span class="input-group-text" id="basic-addon2">MYR/night</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Room Provided</label>
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                            <asp:ListItem>Desk bell</asp:ListItem>
                                            <asp:ListItem>Single bed</asp:ListItem>
                                            <asp:ListItem>Double bed</asp:ListItem>
                                            <asp:ListItem>Triple bed</asp:ListItem>
                                            <asp:ListItem>Towels</asp:ListItem>
                                            <asp:ListItem>Wifi</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                </div>--%>

                                <div class="col-md-12">
                                    <div class="form-group">
                                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />

                                    </div>
                                </div>
                        <div class="form-group">
                            <asp:Button ID="submitBtn" runat="server" Text="Update Payment" CssClass="btn btn-primary buttonedit" OnClick="submitBtn_Click" />
                        </div>

                    </div>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
            </div>
     </div>


</asp:Content>
