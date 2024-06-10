<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserPage/MasterPage/Nav.Master" CodeBehind="bookedRooms.aspx.cs" Inherits="PeaceHotel.UserPage.bookedRooms" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" rel="stylesheet" />--%>
    <%--<link href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" rel="stylesheet" />--%>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);
/*    * {
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
    }

    body {
      color: #545454;
      font-family: "Open Sans", sans-serif;
    }*/

    .fa-star:before {
        content: "\f005";
        color: inherit !important; 
    }

    .wrapper {
      margin: 0 auto;
      max-width: 960px;
      width: 100%;
    }

    .master {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-box-pack: start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      padding-top: 40px;
    }

    .ratingNreview{
      font-size: 20px;
      margin-bottom: 20px;
    }

    .ratingDesc {
      line-height: 160%;
      margin-bottom: 20px;
      text-align: center;
    }

    .rating-component {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
      margin-bottom: 10px;
    }

    .rating-component .status-msg {
      margin-bottom: 10px;
      text-align: center;
    }

    .rating-component .status-msg strong {
      display: block;
      font-weight: bold;
      margin-bottom: 10px;
    }

    .rating-component .stars-box {
      -ms-flex-item-align: center;
      align-self: center;
      margin-bottom: 15px;
    }

    .rating-component .stars-box .star {
      color: #ccc;
      cursor: pointer;
    }

    .rating-component .stars-box .star.hover {
      color: #ff5a49;
    }

    .rating-component .stars-box .star.selected {
      color: #ff5a49;
    }

    .feedback-tags {
      min-height: 119px;
    }

    .feedback-tags .tags-container {
      display: none;
    }

    .feedback-tags .tags-container .question-tag {
      text-align: center;
      margin-bottom: 40px;
    }

    .feedback-tags .tags-box {
      display: -webkit-box;
      display: -ms-flexbox;
      text-align: center;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -ms-flex-direction: row;
      flex-direction: row;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
    }

    .feedback-tags .tags-container .make-compliment {
      padding-bottom: 20px;
    }

    .feedback-tags .tags-container .make-compliment .compliment-container {
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      color: #000;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
    }

    .feedback-tags
      .tags-container
      .make-compliment
      .compliment-container
      .fa-smile-wink {
      color: #ff5a49;
      cursor: pointer;
      font-size: 40px;
      margin-top: 15px;
      -webkit-animation-name: compliment;
      animation-name: compliment;
      -webkit-animation-duration: 2s;
      animation-duration: 2s;
      -webkit-animation-iteration-count: 1;
      animation-iteration-count: 1;
    }

    .feedback-tags
      .tags-container
      .make-compliment
      .compliment-container
      .list-of-compliment {
      display: none;
      margin-top: 15px;
    }

    .feedback-tags .tag {
      border: 1px solid #ff5a49;
      border-radius: 5px;
      color: #ff5a49;
      cursor: pointer;
      margin-bottom: 10px;
      margin-left: 10px;
      padding: 10px;
    }

    .feedback-tags .tag.choosed {
      background-color: #ff5a49;
      color: #fff;
    }

    .list-of-compliment ul {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: horizontal;
      -webkit-box-direction: normal;
      -ms-flex-direction: row;
      flex-direction: row;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
    }

    .list-of-compliment ul li {
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      cursor: pointer;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
      margin-bottom: 10px;
      margin-left: 20px;
      min-width: 90px;
    }

    .list-of-compliment ul li:first-child {
      margin-left: 0;
    }

    .list-of-compliment ul li .icon-compliment {
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      border: 2px solid #ff5a49;
      border-radius: 50%;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center;
      height: 70px;
      margin-bottom: 15px;
      overflow: hidden;
      padding: 0 10px;
      -webkit-transition: 0.5s;
      transition: 0.5s;
      width: 70px;
    }

    .list-of-compliment ul li .icon-compliment i {
      color: #ff5a49;
      font-size: 30px;
      -webkit-transition: 0.5s;
      transition: 0.5s;
    }

    .list-of-compliment ul li.actived .icon-compliment {
      background-color: #ff5a49;
      -webkit-transition: 0.5s;
      transition: 0.5s;
    }

    .list-of-compliment ul li.actived .icon-compliment i {
      color: #fff;
      -webkit-transition: 0.5s;
      transition: 0.5s;
    }

    .button-box .done {
      background-color: #ff5a49;
      border: 1px solid #ff5a49;
      border-radius: 3px;
      color: #fff;
      cursor: pointer;
      display: none;
      min-width: 100px;
      padding: 10px;
    }

    .button-box .done:disabled,
    .button-box .done[disabled] {
      border: 1px solid #ff9b95;
      background-color: #ff9b95;
      color: #fff;
      cursor: initial;
    }

    .submited-box {
      display: none;
      padding: 20px;
    }

    .submited-box .loader,
    .submited-box .success-message {
      display: none;
    }

    .submited-box .loader {
      border: 5px solid transparent;
      border-top: 5px solid #4dc7b7;
      border-bottom: 5px solid #ff5a49;
      border-radius: 50%;
      width: 60px;
      height: 60px;
      -webkit-animation: spin 0.8s linear infinite;
      animation: spin 0.8s linear infinite;
    }

    @-webkit-keyframes compliment {
      1% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }

      25% {
        -webkit-transform: rotate(-30deg);
        transform: rotate(-30deg);
      }

      50% {
        -webkit-transform: rotate(30deg);
        transform: rotate(30deg);
      }

      75% {
        -webkit-transform: rotate(-30deg);
        transform: rotate(-30deg);
      }

      100% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }
    }

    @keyframes compliment {
      1% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }

      25% {
        -webkit-transform: rotate(-30deg);
        transform: rotate(-30deg);
      }

      50% {
        -webkit-transform: rotate(30deg);
        transform: rotate(30deg);
      }

      75% {
        -webkit-transform: rotate(-30deg);
        transform: rotate(-30deg);
      }

      100% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }
    }

    @-webkit-keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }

      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }

    @keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }

      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }

        .dataTables_wrapper {
            margin: 20px;
        }

        .paymentTitle {
            margin: auto;
            text-align: center;
            padding: 20px 0;
        }

        .dataTables_filter > label {
            display: inline-flex;
            margin-bottom: 0.5rem;
            align-items: center;
        }

        .dataTables_paginate.paging_simple_numbers {
            display: inline-flex;
        }

        .btn-danger {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
        }

            .btn-danger:hover {
                color: #fff;
                background-color: #c82333;
                border-color: #bd2130;
            }

            .btn-danger:focus, .btn-danger.focus {
                color: #fff;
                background-color: #c82333;
                border-color: #bd2130;
                box-shadow: 0 0 0 0.2rem rgba(225, 83, 97, 0.5);
            }

            .btn-danger.disabled, .btn-danger:disabled {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
            }

            .btn-danger:not(:disabled):not(.disabled):active, .btn-danger:not(:disabled):not(.disabled).active,
            .show > .btn-danger.dropdown-toggle {
                color: #fff;
                background-color: #bd2130;
                border-color: #b21f2d;
            }

                .btn-danger:not(:disabled):not(.disabled):active:focus, .btn-danger:not(:disabled):not(.disabled).active:focus,
                .show > .btn-danger.dropdown-toggle:focus {
                    box-shadow: 0 0 0 0.2rem rgba(225, 83, 97, 0.5);
                    color: #fff;
                    background-color: #117a8b;
                    border-color: #10707f;
                }

        .btn-warning {
            color: #212529;
            background-color: #ffc107;
            border-color: #ffc107;
        }

            .btn-warning:hover {
                color: #212529;
                background-color: #e0a800;
                border-color: #d39e00;
            }

            .btn-warning:focus, .btn-warning.focus {
                color: #212529;
                background-color: #e0a800;
                border-color: #d39e00;
                box-shadow: 0 0 0 0.2rem rgba(222, 170, 12, 0.5);
            }

            .btn-warning.disabled, .btn-warning:disabled {
                color: #212529;
                background-color: #ffc107;
                border-color: #ffc107;
            }

            .btn-warning:not(:disabled):not(.disabled):active, .btn-warning:not(:disabled):not(.disabled).active,
            .show > .btn-warning.dropdown-toggle {
                color: #212529;
                background-color: #d39e00;
                border-color: #c69500;
            }

                .btn-warning:not(:disabled):not(.disabled):active:focus, .btn-warning:not(:disabled):not(.disabled).active:focus,
                .show > .btn-warning.dropdown-toggle:focus {
                    box-shadow: 0 0 0 0.2rem rgba(222, 170, 12, 0.5);
                }

        .btn-secondary {
            color: #fff;
            background-color: #6c757d;
            border-color: #6c757d;
        }

            .btn-secondary:hover {
                color: #fff;
                background-color: #5a6268;
                border-color: #545b62;
            }

            .btn-secondary:focus, .btn-secondary.focus {
                color: #fff;
                background-color: #5a6268;
                border-color: #545b62;
                box-shadow: 0 0 0 0.2rem rgba(130, 138, 145, 0.5);
            }

            .btn-secondary.disabled, .btn-secondary:disabled {
                color: #fff;
                background-color: #6c757d;
                border-color: #6c757d;
            }

            .btn-secondary:not(:disabled):not(.disabled):active, .btn-secondary:not(:disabled):not(.disabled).active,
            .show > .btn-secondary.dropdown-toggle {
                color: #fff;
                background-color: #545b62;
                border-color: #4e555b;
            }

                .btn-secondary:not(:disabled):not(.disabled):active:focus, .btn-secondary:not(:disabled):not(.disabled).active:focus,
                .show > .btn-secondary.dropdown-toggle:focus {
                    box-shadow: 0 0 0 0.2rem rgba(130, 138, 145, 0.5);
                }


        .heading {
            padding-top: 3rem;
            width: 95%;
            border-bottom: 0.2rem solid rgba(0, 0, 0, .3);
            margin: 0 auto;
        }

            .heading span {
                font-size: 2rem;
                padding: 1rem 6rem;
                color: #fff;
                background: black;
                border-top-right-radius: 3rem;
                display: inline-block;
            }

        .div-inside-img {
            position: relative;
            max-width: 250px;
            cursor: pointer;
        }

        .positioning {
            position: absolute;
            left: 10px;
            bottom: 22px;
            border-radius: 1rem;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 4px;
            font-size: 17px;
            line-height: 18px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/rooms.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/flexbox.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <h1 class="paymentTitle">Payment History</h1>
    <h2 class="heading"><span>Current</span> </h2>
    <table id="example" class="row-border" style="width: 100%">
        <thead>
            <tr>
                <th>Image</th>
                <th>Room Type</th>
                <th>Room No</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
                <th>Total Amount</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <%--<asp:ListView ID="dlRoom" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="roomId">
                <ItemTemplate>
                    <tr>
                        <td>
                            <div class="div-inside-img" data-toggle="modal" data-target="#exampleModal">
                                <img src="<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("roomImg")) %>" alt="logo" style="max-width: 250px"><div class="positioning"><i class="far fa-images"></i></div>
                            </div>
                        </td>
                        <td><%# Eval("roomType")%></td>
                        <td><%# Eval("roomNumber")%></td>
                        <td><%# Eval("checkInDate", "{0:dd/M/yyyy}")%></td>
                        <td><%# Eval("checkOutDate", "{0:dd/M/yyyy}")%></td>
                        <td>RM <%# Eval("paymentTotal")%></td>
                        <td>
                            <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="You can only cancel booking within 3days">Cancel Booking</button>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>--%>
            <%--<tr>
                <td><div class="div-inside-img" data-toggle="modal" data-target="#exampleModal"><img src="assets/images/hotel1.jpg" alt="logo" style="max-width: 250px"><div class="positioning"><i class="far fa-images"></i></div></div></td>
                <td>Single</td>
                <td>B1001</td>
                <td>1781-04-25</td>
                <td>1781-04-25</td>
                <td>$320,800</td>
                <td>
                    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="You cannot cancel after 3 days of payment">Cancel Booking</button></td>
            </tr>--%>
        </tbody>
        <tfoot>
            <tr>
                <th>Image</th>
                <th>Room Type</th>
                <th>Room No</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
                <th>Total Amount</th>
                <th></th>
            </tr>
        </tfoot>
    </table>


    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from payment p, booking b, room r, roomType t, aspnet_users u where p.bookingId = b.bookingId AND p.userId = u.userId and b.userId = u.userId and b.roomId = r.roomId and  t.roomTypeId = r.roomTypeId"></asp:SqlDataSource>--%>

    <h2 class="heading"><span>Previous</span> </h2>
    <table id="example2" class="row-border" style="width: 100%">
        <thead>
            <tr>
                <th>Image</th>
                <th>Room Type</th>
                <th>Room No</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
                <th>Total Amount</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
           <%-- <tr>
                <td><div class="div-inside-img" data-toggle="modal" data-target="#exampleModal"><img src="assets/images/hotel1.jpg" alt="logo" style="max-width: 250px"><div class="positioning"><i class="far fa-images"></i></div></div></td>
                <td>Single</td>
                <td>B1001</td>
                <td>1781-04-25</td>
                <td>1781-04-25</td>
                <td>$320,800</td>
                <td>
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal2">Rating</button></td>
            </tr>--%>
        </tbody>
        <tfoot>
            <tr>
                <th>Image</th>
                <th>Room Type</th>
                <th>Room No</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
                <th>Total Amount</th>
                <th></th>
            </tr>
        </tfoot>
    </table>

    <!-- Modal -->
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
   <%-- <input class="ratevalue" id="ratevalue" type="hidden" name="rate_value" value="" runat="server" />
    <input class="rating_msg" id="rating_msg" type="hidden" name="rating_msg" value="" runat="server" />--%>
    <%--<div class="modal fade" id="ratingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ratingModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="wrapper">
                      <div class="master">
                        <h1 class="ratingNreview">Review And rating</h1>
                        <h2 class="ratingDesc">How was your experience about our product?</h2>

                        <div class="rating-component">
                          <div class="status-msg">
                            <label>
                                <input  class="rating_msg" id="rating_msg" type="hidden" name="rating_msg" value="" runat="server" />
                            </label>
                          </div>
                          <div class="stars-box">
                            <i class="star fa fa-star" title="1 star" data-message="Poor" data-value="1"></i>
                            <i class="star fa fa-star" title="2 stars" data-message="Too bad" data-value="2"></i>
                            <i class="star fa fa-star" title="3 stars" data-message="Average quality" data-value="3"></i>
                            <i class="star fa fa-star" title="4 stars" data-message="Nice" data-value="4"></i>
                            <i class="star fa fa-star" title="5 stars" data-message="very good qality" data-value="5"></i>
                          </div>
                          <div class="starrate">
                            <label>
                                <input class="ratevalue" id="ratevalue" type="hidden" name="rate_value" value="" runat="server" />
                            </label>
                          </div>
                        </div>

                        <div class="feedback-tags">
                          <div class="tags-container" data-tag-set="1">
                            <div class="question-tag">
                              Why was your experience so bad?
                            </div>
                          </div>
                          <div class="tags-container" data-tag-set="2">
                            <div class="question-tag">
                              Why was your experience so bad?
                            </div>

                          </div>

                          <div class="tags-container" data-tag-set="3">
                            <div class="question-tag">
                              Why was your average rating experience ?
                            </div>
                          </div>
                          <div class="tags-container" data-tag-set="4">
                            <div class="question-tag">
                              Why was your experience good?
                            </div>
                          </div>

                          <div class="tags-container" data-tag-set="5">
                            <div class="make-compliment">
                              <div class="compliment-container">
                                Give a compliment
                                <i class="far fa-smile-wink"></i>
                              </div>
                            </div>
                          </div>
      
                          <div class="tags-box">
                            <input type="text" class="tag form-control" name="comment" id="inlineFormInputName" placeholder="please enter your review">
                            <input type="hidden" name="product_id" value="{{ $products->id }}" />
                          </div>
      
                        </div>

                        <div class="button-box">--%>
                          <%--<input type="submit" class=" done btn btn-warning" disabled="disabled" value="Add review" />--%>
                            <%--<asp:Button ID="Button1" Cssclass="done btn btn-warning" runat="server" disabled="disabled" Text="Add review" onclick="Button1_Click" />
                        </div>

                        <div class="submited-box">
                          <div class="loader"></div>
                          <div class="success-message">
                            Thank you!
                          </div>
                        </div>
                      </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-room btn-room-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>--%>

    <!-- Modal -->
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <%--<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Swiper -->
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="assets/images/hotel3.jpg" style="max-width: 70%;"
                                    class="d-block w-100" alt="Hotel Image">
                            </div>
                            <div class="swiper-slide">
                                <img src="assets/images/hotel3.jpg" style="max-width: 70%;"
                                    class="d-block w-100" alt="Hotel Image">
                            </div>
                            <div class="swiper-slide">
                                <img src="assets/images/hotel3.jpg" style="max-width: 70%;"
                                    class="d-block w-100" alt="Hotel Image">
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <main role="main" class="max-w-4xl mx-auto px-4 mb-8">
                        <h1 class="text-center border-b-2 border-dotted font-thin border-grey mb-6 pb-4"></h1>
                        <div class="md:flex content-center flex-wrap -mx-2 p-3 rounded">
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p>
                                        Edison bulb poke etsy brunch, freegan lumbersexual tacos. Activated charcoal mustache small
                            batch thundercats vexillologist poke meh snackwave. Biodiesel photo booth cardigan heirloom
                            normcore taiyaki palo santo yuccie unicorn swag street art kitsch seitan raclette.
                                    </p>
                                </div>
                            </div>
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p>
                                        Chambray gochujang activated charcoal seitan etsy. Williamsburg tattooed intelligentsia
                            shoreditch keytar. Paleo gochujang copper mug.
                                    </p>
                                </div>
                            </div>
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p>90s vape pork belly gastropub, meh cold-pressed microdosing fam yuccie cronut brunch.</p>
                                </div>
                            </div>
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p>Squid palo santo shaman, crucifix occupy twee thundercats.</p>
                                </div>
                            </div>
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p>
                                        Pour-over ennui twee man braid kogi. Forage man braid offal pickled tumblr kickstarter. Cray
                            vaporware locavore vexillologist, kitsch la croix man bun.
                                    </p>
                                </div>
                            </div>
                            <div class="md:flex md:w-1/2 lg:w-1/3 px-2 py-2">
                                <div class="md:flex-1 p-4 rounded bg-white border-b border-r">
                                    <h2>Title</h2>
                                    <p class="mb-4">
                                        Vexillologist glossier venmo prism mixtape shaman. Before they sold out cronut
                            raw denim prism lomo mixtape echo park kitsch hella vape aesthetic hot chicken freegan.
                            Normcore 8-bit chartreuse, austin shoreditch single-origin coffee tofu pinterest iPhone
                            franzen ugh mixtape vape brooklyn.
                                    </p>
                                    <p>
                                        Cardigan copper mug narwhal, fixie cronut four dollar toast next level viral pork belly
                            shabby chic small batch DIY brooklyn yuccie tumeric. Irony poutine health goth coloring
                            book.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </main>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-room btn-room-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div> --%>

    <script>
        $(document).ready(function () {
            $('#example').DataTable({
                lengthMenu: [
                    [3, 5, 10, -1],
                    [3, 5, 10, 'All'],
                ],
            });
        });

        $(document).ready(function () {
            $('#example2').DataTable({
                lengthMenu: [
                    [3, 5, 10, -1],
                    [3, 5, 10, 'All'],
                ],
            });
        });

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    </script>

    <script>
        $(".rating-component .star").on("mouseover", function () {
            var onStar = parseInt($(this).data("value"), 10); //
            $(this).parent().children("i.star").each(function (e) {
                if (e < onStar) {
                    $(this).addClass("hover");
                } else {
                    $(this).removeClass("hover");
                }
            });
        }).on("mouseout", function () {
            $(this).parent().children("i.star").each(function (e) {
                $(this).removeClass("hover");
            });
        });

        $(".rating-component .stars-box .star").on("click", function () {
            var onStar = parseInt($(this).data("value"), 10);
            var stars = $(this).parent().children("i.star");
            var ratingMessage = $(this).data("message");

            var msg = "";
            if (onStar > 1) {
                msg = onStar;
            } else {
                msg = onStar;
            }
            $('.rating-component .starrate .ratevalue').val(msg);



            $(".fa-smile-wink").show();

            $(".button-box .done").show();

            if (onStar === 5) {
                $(".button-box .done").removeAttr("disabled");
            } else {
                $(".button-box .done").attr("disabled", "true");
            }

            for (i = 0; i < stars.length; i++) {
                $(stars[i]).removeClass("selected");
            }

            for (i = 0; i < onStar; i++) {
                $(stars[i]).addClass("selected");
            }

            $(".status-msg .rating_msg").val(ratingMessage);
            $(".status-msg").html(ratingMessage);
            $("[data-tag-set]").hide();
            $("[data-tag-set=" + onStar + "]").show();
        });

        $(".feedback-tags  ").on("click", function () {
            var choosedTagsLength = $(this).parent("div.tags-box").find("input").length;
            choosedTagsLength = choosedTagsLength + 1;

            if ($(this).hasClass("choosed")) {
                $(this).removeClass("choosed");
                choosedTagsLength = choosedTagsLength - 2;
            } else {
                $(this).addClass("choosed");
                $(".button-box .done").removeAttr("disabled");
            }

            console.log(choosedTagsLength);

            if (choosedTagsLength <= 0) {
                $(".button-box .done").attr("enabled", "false");
            }
        });



        $(".compliment-container .fa-smile-wink").on("click", function () {
            $(this).fadeOut("slow", function () {
                $(".list-of-compliment").fadeIn();
            });
        });



        $(".done").on("click", function () {
            $(".rating-component").hide();
            $(".feedback-tags").hide();
            $(".button-box").hide();
            $(".submited-box").show();
            $(".submited-box .loader").show();

            setTimeout(function () {
                $(".submited-box .loader").hide();
                $(".submited-box .success-message").show();
            }, 1500);
        });

    </script>
</asp:Content>

