<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm-booking.aspx.cs" MasterPageFile="~/UserPage/MasterPage/Nav.Master" Inherits="PeaceHotel.UserPage.confirm_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js"></script>
    <link rel="stylesheet" href="../../UserPage/assets/css/bootstrap-datetimepicker.min.css">
    <script src="../../UserPage/assets/js/bootstrap-datetimepicker.min.js"></script>



    <style>
        @import url('https://fonts.googleapis.com/css2?family=Newsreader:wght@300&display=swap');

        .container-confirm {
            margin:auto;
            margin-top: 5%;
            background-color: #000000;
            /* box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
            -webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75); */
            display: flex;
            height: 90%;
            width: 60%;
        }

        .top {
            background-image: url('https://source.unsplash.com/67-sOi7mVIk/1920x1280');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            width: 70%;
        }

        h1 {
            color: #ffffff;
            text-align: center;
            top: 0;
        }

        .bottom {
            color: #ffffff;
            display: flex;
            flex-direction: column;
            padding: 2%;
            text-align: center;
            width: 50%;
        }

            .bottom h2 {
                border-bottom: 1px solid #333;
                font-weight: 400;
                font-size: large;
                margin: 10px 0 0;
            }

            .bottom p {
                color: #Ff6fa5;
                font-weight: 500;
                font-size: medium;
                margin: 3px 0;
            }

        #numberPlace,.numberPlace {
            color: #Ff6fa5;
            display: inline-grid;
        }

        .confirmBtn {
            background-color: transparent;
            border: 1px solid #Ff6fa5;
            color: #fff;
            cursor: pointer;
            font-weight: 500;
            padding: 15px 30px;
            margin-top: 5%;
        }

        #minus, #plus {
            background-color: transparent;
            border: 1px solid #Ff6fa5;
            color: #fff;
            cursor: pointer;
            font-weight: 500;
            padding: 15px;
            margin-top: 5%;
            display: inline-grid;
        }

        @media screen and (max-width: 800px) {
            .left {
                width: 100%;
            }

                .left::after {
                    display: none;
                }

            .top {
                display: none;
            }
        }

        .js .toggle-box .content {
            display: none;
        }

        .toggle-box {
            position: absolute;
            margin-top: 300px;
            width: 60%;
            background-color: #000000;
            color: #fff;
            border-top: 1px solid #333;
        }

        .toggle {
            cursor: pointer;
        }

        .header-confirm {
            margin: 0;
            padding: 5px;
            background: #000000;
            color: #fff;
        }

        .content {
            padding: 5px
        }

        .dropdown-menu {
          position: absolute;
          top: 100%;
          left: 0;
          z-index: 1000;
          display: none;
          float: left;
          min-width: 25rem;
          padding: 0.5rem 0;
          margin: 0.125rem 0 0;
          font-size: 1rem;
          color: #212529;
          text-align: left;
          list-style: none;
          background-color: #fff;
          background-clip: padding-box;
          border: 1px solid rgba(0, 0, 0, 0.15);
          border-radius: 0.25rem;
        }

        .dropdown-menu-right {
          right: 0;
          left: auto;
        }

        .dropup .dropdown-menu {
          top: auto;
          bottom: 100%;
          margin-top: 0;
          margin-bottom: 0.125rem;
        }

        .dropright .dropdown-menu {
          top: 0;
          right: auto;
          left: 100%;
          margin-top: 0;
          margin-left: 0.125rem;
        }

        .dropleft .dropdown-menu {
          top: 0;
          right: 100%;
          left: auto;
          margin-top: 0;
          margin-right: 0.125rem;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
          right: auto;
          bottom: auto;
        }

        .dropdown-menu.show {
          display: block;
        }

        .footer-top {
            margin-top: 200px !important;
        }
    </style>

    <div class="container-confirm">
        <div class="top">
        </div>
        <div class="bottom">
            <h1>The Best Hotel</h1>
            <%--<form id="form1" runat="server">--%>
            <div style="position:relative">
                <h2>Check-in date</h2>
                <p>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                </p>
            </div>
            <div style="position:relative">
                <h2>Check-out date</h2>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </p>
                
            </div>
<%--                </form>--%>
            <h2>Room</h2>
            <p><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
            <%--<h2>Quantity</h2>--%>
            <%--<div id="mainDiv">
                <button id="minus" type="button">-</button>&nbsp;
                <span id="numberPlace" class="numberPlace" runat="server">1</span>&nbsp;
                <button id="plus" type="button">+</button>
            </div>--%>
            <h2></h2>
            <asp:Button ID="Reservation" CssClass="confirmBtn" OnClick="Reservation_Click" runat="server" Text="Confirm Revervation" />
        </div>

        <div class="toggle-box">
            <h3 class="toggle header-confirm"><a href="#" style="text-decoration: none; color: #fff;"> <i class="fa fa-angle-down"></i> Summary of charges <p class="totalPrice" id="totalPrice" runat="server" style="text-align:right;float:right;width:60%"> </p></a></h3>
            <div class="content">
                <strong>RATE DETAILS:</strong><br />
                <ul>
                    <li style="margin-top:10px;"><div class="totalRoom" id="totalRoom" style="float:left;display:contents">1 room(s)</div><div style="float:right">Price in MYR</div></li>
                    <li style="margin:10px;"><div style="float:left;display:contents">Total cash rate</div><div class="cashRate" id="cashRate" runat="server" style="float:right"></div></li>
                    <li style="margin:10px;"><div style="float:left;display:contents">Estimated government taxes and fees</div><div class="tax" id="tax" runat="server" style="float:right"></div></li>
                    <li style="margin:10px;"><div style="float:left;display:contents">Total Stay</div><div class="totalStay" id="totalStay" runat="server" style="float:right"></div></li>
                </ul>
            </div>
        </div>
        <input type="hidden" name="savePrice" id="savePrice" class="savePrice" value="" runat="server"/>
    </div>

    <script>
        /* Recalculate cart */
        function recalculateCart() {
            var subtotal = 0;

            /* Sum up row totals */
            $(".product-info").each(function () {
                //                    console.log(parseFloat($(this).children(".store-product-line-price").text()));
                subtotal += parseFloat($(this).children(".store-product-line-price").text());
            });

            /* Update totals display */
            $("#subtotal").html("RM " + subtotal.toFixed(2));
            document.querySelector('#passSubtotal').setAttribute("value", subtotal.toFixed(2));
        }
    </script>

     <script>
         /* Update quantity */
         function updateQuantity(number) {
             var roomPrice = $(".savePrice").val();
             var helperAmount = number * roomPrice;
             var sst = 0.06;
             var tax = helperAmount * sst;
             var total = helperAmount + tax;

             $(".cashRate").text(helperAmount);
             $(".tax").text(tax);
             $(".totalStay").text(total);
             $(".totalPrice").text("RM "+total);


             /* Update line price display and recalc cart totals */
             //productRow.children(".product-line-price").each(function () {
             //    $(this).text("Subtotal: RM " + linePrice.toFixed(2));
             //});

             //productRow.children(".store-product-line-price").each(function () {
             //    $(this).text(linePrice.toFixed(2));
             //    recalculateCart();
             //});

         }
     </script>

    <script type="text/javascript">
        $(function () {
            $('.checkindate, .checkoutdate').datetimepicker({
                format: 'DD/MM/YYYY',
                minDate: moment().add(0, 'h')
            });
        });
    </script>


    <script>
        (function ($) {

            $(function () {

                $('html').toggleClass('no-js js');

                $('.toggle-box .toggle').click(function (e) {
                    e.preventDefault();

                    $(this).next('.content').slideToggle();
                });

            });

        })(jQuery);

        $(".header-confirm").click(function () {
            $(this).find('a i.fa').toggleClass('fa-angle-up fa-angle-down');
        });
    </script>

   <%-- <script>
        window.onload = function () {
            var minusBtn = document.getElementById("minus"),
                plusBtn = document.getElementById("plus"),
                numberPlace = document.querySelector(".numberPlace"),
                number = 1, /// number value
                min = 1, /// min number
                max = 5; /// max number

            minusBtn.onclick = function () {
                if (number > min) {
                    number = number - 1; /// Minus 1 of the number
                    numberPlace.innerText = number; /// Display the value in place of the number
                    $(".totalRoom").text(number + " room(s)");
                    updateQuantity(number);

                }
                if (number == min) {
                    numberPlace.style.color = "red";
                    setTimeout(function () { numberPlace.style.color = "#Ff6fa5" }, 500)
                }
                else {
                    numberPlace.style.color = "#Ff6fa5";
                }

            }
            plusBtn.onclick = function () {
                if (number < max) {
                    number = number + 1;
                    numberPlace.innerText = number; /// Display the value in place of the number
                    $(".totalRoom").text(number + " room(s)");
                    updateQuantity(number);
                }
                if (number == max) {
                    numberPlace.style.color = "red";
                    setTimeout(function () { numberPlace.style.color = "#Ff6fa5" }, 500)

                }

                else {
                    numberPlace.style.color = "#Ff6fa5";

                }


            }

        }
    </script>--%>

</asp:Content>