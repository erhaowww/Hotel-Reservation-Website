<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserPage/MasterPage/Nav.Master" CodeBehind="Rooms.aspx.cs" Inherits="PeaceHotel.UserPage.WebForm1" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/rooms.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/flexbox.css">

    <style>
        .badge-primary {
            color: #fff;
            background-color: #007bff;
        }
        .badge {
            display: inline-block !important;
            padding: 0.25em 0.4em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 0.25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        .mb-0.mr-2 {
            margin: inherit;
            font-size: 15px;
        }
        .fa-star:before {
            color: #ffc107!important;
        }
        .form-inline {
            width: 120%;
        }
    </style>


    <section class="main-content">
        <div class="container-room">
            <div class="col-lg-12 px-4 offset-md-1">
                <div class="row mt-3">
                    <div class="col-md-7">
                        <p class="m-0">
                            <b>123</b> out of 1987
                        </p>
                    </div>
                    <div class="col-md-3">
                        <div class="form-inline">
                            <label class="m-4" for="exampleFormControlSelect1">Sort by</label>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <%--<select class="form-control" id="exampleFormControlSelect1">
                                <option>Default Sorting</option>
                                <option>Sort By Name A To Z</option>
                                <option>Sort By Name Z To A</option>
                                <option>Sort By Price: Low to High</option>
                                <option>Sort By Price: High to Low</option>
                            </select>--%>
                            <%--<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control">
                                <asp:ListItem Value="default">Default</asp:ListItem>
                                <asp:ListItem Value="name-a-z">Sort by Name A to Z</asp:ListItem>
                                <asp:ListItem Value="name-z-a">Sort by Name Z to A</asp:ListItem>
                                <asp:ListItem Value="price-low-high">Sort by Price: Low to High</asp:ListItem>
                                <asp:ListItem Value="price-high-low">Sort by Price: High to Low</asp:ListItem>
                            </asp:DropDownList>--%>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            
        </div>
    </section>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE ([deleted] = @deleted)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="deleted" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div id="pagination-container"></div>

    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

    <!-- Modal -->


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.js"></script>


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
        // jQuery Plugin: http://flaviusmatis.github.io/simplePagination.js/

        var items = $(".main-content .container-room .row");
        var numItems = items.length;
        var perPage = 4;

        items.slice(perPage).hide();

        $('#pagination-container').pagination({
            items: numItems,
            itemsOnPage: perPage,
            prevText: "&laquo;",
            nextText: "&raquo;",
            onPageClick: function (pageNumber) {
                var showFrom = perPage * (pageNumber - 1);
                var showTo = showFrom + perPage;
                items.hide().slice(showFrom, showTo).show();
                window.scroll({
                    top: 500, left: 0,
                    behavior: 'smooth'
                });
            }
        });
    </script>

    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        $('.text-dark.ml-auto').click(function () {
            $(this).find('i').toggleClass('fas far');

        });
    </script>

    <script>
        $('form select').on('change', function () {
            $(this).closest('form').submit();
        });
    </script>

    <%--<script>
        function saveToFavorite(roomId2) {
      
            $.ajax({
                type: 'POST',
                url: 'Rooms.aspx/Textbox1_Click',
                data: { roomId: roomId2 },
                //contentType: 'application/json; charset=utf-8',
                //dataType: 'json',
                //async: false,
                success: function (msg) {
                    // Do something interesting here.
                    console.log();
                }
            });
        }
    </script>--%>


</asp:Content>

