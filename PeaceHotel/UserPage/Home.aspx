<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PeaceHotel.Home" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peace</title>

    <!-- 
    - favicon
  -->
    <link rel="shortcut icon" href="./assets/images/PeaceLogo.png" type="image/svg+xml">

    <!-- 
    - custom css linkFF
  -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link rel="stylesheet" href="./assets/css/style.css">

     <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <!-- 
    - google font link
  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Source+Sans+Pro:wght@600;700&display=swap" rel="stylesheet">
</head>



<!-- <div class="annoucement">
    <p>Convid-19 Update <span style="display:inline;"><a href="#" style="display:inline;text-decoration: underline;">Detail</a></span></p>
</div> -->

<body id="top">

    
       <form id="form1" runat="server">
   <% bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;   %>



    

    <!-- 
    - #HEADER
  -->


    <header class="header" data-header>
        <div class="container">

            <div class="overlay" data-overlay></div>

            <button class="nav-open-btn" aria-label="Open Menu" data-nav-open-btn>
              <ion-icon name="menu-outline"></ion-icon>
            </button>

            <nav class="navbar" data-navbar>

                <div class="navbar-top">
                   <a href="#" class="logo">Peace</a>
                       <%--<img src="./assets/images/PeaceLogo.png" class="logo" alt="Acc">--%>
                    
                    <button class="nav-close-btn" aria-label="Close Menu" data-nav-close-btn>
            <ion-icon name="close-outline"></ion-icon>
          </button>

                </div>

                <ul class="navbar-list">

                    <li class="navbar-item">
                        <a href="#footer" class="navbar-link" aria-haspopup="listbox" aria-expanded="false" class="SHh" data-navbar-link><i class="fa fa-phone"></i></a>
                    </li>

                    <li class="navbar-item">
                        <a href="#footer" class="navbar-link" data-navbar-link><i class="fa fa-envelope"></i></a>
                    </li>

                    <li class="navbar-item">
                        <a href="Rooms.aspx" class="navbar-link" data-navbar-link><span id="navText">ROOMS</span></a>
                    </li>

                     <li class="navbar-item">
                        <a href="./Profile/Blog2.aspx" class="navbar-link" data-navbar-link><span id="navText">BLOG</span></a>
                    </li>


                                 <%--Mobile View--%>
                                <div class="mobile-link">
                                    <li class="navbar-item">
                                        <a href="Login.aspx" class="navbar-link" data-navbar-link><span id="navText">LOGIN PAGE</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">ADMIN PAGE</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">BOOKED ROOMS</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="saved.aspx" class="navbar-link" data-navbar-link><span id="navText">SAVED ROOMS</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">CHANGE PASSWORD</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a style="text-transform:uppercase;" href="Login.aspx"  class="navbar-link" data-navbar-link><span id="navText">  <asp:LoginStatus ID="LoginStatus1" style="color:black;" class="navbar-link" runat="server" /></span></a>
                                    </li>
                                </div>
                              
                                 <%--Mobile View--%>


                    <li class="navbar-item">
                        <%--<a href="#features" class="navbar-link" data-navbar-link><span id="navText">SIGNUP</span></a>--%>
                   <%--     <a href="#" class="navbar-link" data-navbar-link><span id="dd_main">LEE</span></a>--%>



                        <%--Account Box--%>

 
<div class="wrapperAcc">
	<div class="navbarAcc">

		<div class="nav_right">
			<ul>
				<li class="nr_li dd_main">
                    <% if(val1) {%>
                    <a style="text-transform: uppercase;" class="navbar-link" data-navbar-link><span id="navText">
                                  <asp:LoginName ID="LoginName1" runat="server" />
                              </span></a>
                    
<%          }
            else { %>
				          <li class="navbar-item">
                        <a href="Login.aspx" class="navbar-link" data-navbar-link><span id="navText">LOGIN</span></a>
                    </li>
                  <%--      <a style="text-transform: uppercase;" class="navbar-link" data-navbar-link>
                              </span></a>--%>
                    <% } %>
					
					<div class="dd_menu">
						<div class"space" style="content="";height=30px;" >
						<div class="dd_right">
                            <div class="imageAcc">
                                <img src="./assets/images/Acc.jpg" alt="Acc">
                                <%--<div class="centered">Sign up to our Peace member<br />to stay connected to Peace Place</div>--%>
                                       <div class="centered">Welcome to our Peace member<br />to stay connected to Peace Place</div>
                                <a href="Profile/UserProfile.aspx"> <asp:LinkButton class="AccButton" id="accBtn" runat="server" Text="VIEW PROFILE" OnCommand="accBtnCliked"/> </a>
                               <%--<button class="AccButton">VIEW PROFILE</button>--%>
                            </div>
                              <p class="HeadText">PEACE PLACE</p>
                            <ul>

                                
                                <%if (System.Web.HttpContext.Current.User.IsInRole("Admin")) { %>

                                <li><a class="cool-link" href="../../AdminPage/all-room.aspx">ADMIN PAGE</a></li>
                                <% } %>
                                <li><a class="cool-link" href="../../UserPage/bookedRooms.aspx">BOOKED ROOMS</a></li>
                                <li><a class="cool-link" href="../../UserPage/saved.aspx">SAVED ROOMS</a></li>
                                <li><a class="cool-link" href="../../UserPage/Profile/ChangePassword.aspx">CHANGE PASSWORD</a></li>
                                                 <li><a class="cool-link" href="../../UserPage/Profile/contactForm.aspx">CONTACT FORM</a></li>
                                <li><a class="cool-link" href="#" >  <asp:LoginStatus ID="LoginStatus2" style="text-transform:uppercase;" class="cool-link"  runat="server" />    </a> </li>

                        
                                   
                                      
                               

                                  

                            

							</ul>
						</div>
                            </div>
					</div>
				</li>
			
			</ul>
		</div>
	</div>
</div>	

     
                        <%--Account Box--%>


                    </li>


                </ul>

            </nav>

            <a href="#">
                <%--<img src="./assets/images/PeaceLogo.png" class="logo" alt="Acc">--%>
               <h1 class="logo">Peace</h1>
            </a>

            <a href="Rooms.aspx" class="btn">
                <!-- <ion-icon name="chevron-forward-outline" aria-hidden="true"></ion-icon> -->

                <span>Book Now</span>
            </a>



        </div>
    </header>





    <main>
        <article>

            <%--Slider&Video--%>

             <div id="full-screen" class="full-screen">
                <video src="./assets/images/hotelvideo.mp4" id="video" class="video" autoplay muted></video>
            </div> 




            <!-- <section class="hero" id="slide"> -->
            <section id="slide">
                <div class="slider">
                    <div class="slide active">
                        
                        <img src="./assets/images/Slide1.jpg" alt="">
                    
                        <div class="info">
                            <h2>SPECIOUS RETREATS</h2>
                            <span class="slideText"><p>Dive into summer at Peace's luxurious, nature-blessed resorts, where expansive villas embrace stunning indoor-outdoor living for memorable moments..</p></span>
                            <button class="btn" onclick="playVid()" type="button">Play video</button>
                        </div>
                    </div>
                    <div class="slide">
                        <img src="./assets/images/Slide2.jpg" alt="">
                        <div class="info">
                            <h2>SPECIOUS RETREATS</h2>
                            <span class="slideText"><p>Dive into summer at Peace’s luxurious, nature-blessed resorts, where expansive villas embrace stunning indoor-outdoor living for memorable moments..</p></span>
                            <button class="btn" type="button">Book Now</button>
                        </div>
                    </div>
                    <div class="slide">
                        <img src="./assets/images/Slide.jpg" alt="">
                        <div class="info">
                            <h2>SPECIOUS RETREATS</h2>
                            <span class="slideText"><p>Dive into summer at Peace’s luxurious, nature-blessed resorts, where expansive villas embrace stunning indoor-outdoor living for memorable moments..</p></span>
                            <button class="btn" type="button">Rooms</button>
                        </div>
                    </div>

                    <div class="navigation">
                        <i class="fas fa-chevron-left prev-btn"></i>
                        <i class="fas fa-chevron-right next-btn"></i>
                    </div>
                    <div class="navigation-visibility">
                        <div class="slide-icon active"></div>
                        <div class="slide-icon"></div>
                        <div class="slide-icon"></div>

                    </div>
                </div>
            </section>
            <!-- </section> -->


            <!-- Book -->
            
     
            <section class="book">
                <div class="Bookcontainer flex">
                    <div class="input grid">
                        <div class="box">
                            <label>CHECK-IN</label>&nbsp;
                            <input type="date" id="checkInDate" name="checkInDate" runat="server"/>
                            <br />
                        </div>
                        <div class="box">
                            <label>CHECK-OUT</label>
                            <input type="date" id="checkOutDate" name="checkOutDate" runat="server"/>
                            <asp:CompareValidator ID="CompareValidator1" ValidationGroup = "Date" ForeColor = "Red" runat="server" 
ControlToValidate = "checkInDate" ControlToCompare = "checkOutDate" Operator="LessThan" Type = "Date"
ErrorMessage="Check In Date must be less than Check Out Date."></asp:CompareValidator>
<br />
                        </div>
                        <div class="box">
                            <label>ROOM-TYPE</label><br />
                            <asp:DropDownList ID="RoomTypeList" Cssclass="selection" runat="server" DataSourceID="SqlDataSource1" DataTextField="roomType" DataValueField="roomType"></asp:DropDownList>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [roomType] FROM [RoomType] WHERE ([deleted] = @deleted)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="deleted" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="search">
                       <%-- <input type="submit" runat="server" value="CHECK AVAILABILITY">--%>
                         <asp:Button ID="Button2" runat="server" Text="CHECK AVAILABILITY" OnClick="Button2_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
            </section>

        </form>



    

            <!-- Book -->


              <!-- Text -->

                    <div class="TextContent"  >
                <span class="TextContentspan">
                <h1>
                    IN THE HEART OF PEACE PLACE
                </h1>
                <p>Framed by the towering natural wonder of Table Mountain, Peace Place is a tranquil enclave surrounded by mesmerising waterways and a traditional harbour, moments from the vibrant Victoria & Alfred Waterfront.</p>
            </span>
            </div>

              <!-- Text -->

           

           <%--RoomSlide--%>

             <section class="room top" id="room"  data-aos="fade-up" data-aos-offset="-400"  data-aos-easing="ease-in" data-aos-once="true">
    <div class="Roomcontainer">
      <div class="heading_top flex1">
        <div class="heading">

        </div>
        <div class="button">
          <a href="Rooms.aspx">  <button class="btn1">VIEW ALL</button>   </a>
        </div>
      </div>

      <div class="content grid">
        <div class="box">
          <div class="img">
                     <a href="Rooms.aspx">
            <img src="./assets/images/rooms1.jpg" alt="">
          </div>
                                      </a>
          <div class="text">
            <h3>Single Rooms</h3>
            <p> <span>RM</span>129 <span>/per night</span> </p>
          </div>
        </div>
        <div class="box">
              <a href="Rooms.aspx">
          <div class="img">
            <img src="./assets/images/rooms2.jpg" alt="">
          </div>
                     </a>
          <div class="text">
            <h3>Double Rooms</h3>
            <p> <span>RM</span>129 <span>/per night</span> </p>
          </div>
        </div>
        <div class="box">
                   <a href="Rooms.aspx">
          <div class="img">
            <img src="./assets/images/rooms3.jpg" alt="">
          </div>
                        </a>
          <div class="text">
            <h3>Triple Rooms</h3>
            <p> <span>RM</span>129 <span>/per night</span> </p>
          </div>
        </div>
      </div>
    </div>
  </section>


            <%--RoomSlide--%>

             <div class="TextContent" style="margin-top:80px;margin-bottom:45px;">
                <span class="TextContentspan">
                <h1>
                   CUSTOMER REVIEW
                </h1>
                
            </span>
            </div>

              <%--CustoemrReview--%>


                <div class="wrapperReview"  data-aos="fade-up" data-aos-offset="-400" data-aos-once="true" data-aos-easing="ease-in">
        <div class="boxReview" >
            <i class="fas fa-quote-left quote"></i>
          <p>Pretty cool place and relax </p>
            <div class="contentReview"  >
                <div class="info">
                    <div class="name">Alex Smith</div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
             
            </div>
        </div>
        <div class="boxReview">
            <i class="fas fa-quote-left quote"></i>
            <p>Lorem aliasry ipsum dolor sits ametans, consectetur adipisicing elitits. Expedita reiciendis itaque placeat thuratu, quasi yiuos repellendus repudiandae deleniti ideas fuga molestiae, alias.</p>
            <div class="contentReview">
                <div class="info">
                    <div class="name">Steven Chris</div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            
            </div>
        </div>
        <div class="boxReview">
            <i class="fas fa-quote-left  quote"></i>
            <p>Lorem aliasry ipsum dolor sits ametans, consectetur adipisicing elitits. Expedita reiciendis itaque placeat thuratu, quasi yiuos repellendus repudiandae deleniti ideas fuga molestiae, alias.</p>
            <div class="contentReview">
                <div class="info">
                    <div class="name">Kristina Bellis</div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            
            </div>
        </div>
    </div>

                  <%--CustoemrReview--%>


    <!-- 
    - #FOOTER
  -->

    <footer class="footer" id="footer" >

        <div class="footer-top section">
            <div class="container">

                <div class="footer-brand">

                    <!-- <a href="#" class="logo">Desinic</a> -->

                    <p class="text">
                       Peace is a state of inner calm that the individual achieves which is not subjected to change.
                    </p>

                    <ul class="social-list">

                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-facebook"></ion-icon>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-instagram"></ion-icon>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-twitter"></ion-icon>
                            </a>
                        </li>

                    </ul>

                </div>

                <ul class="footer-list">

                    <li>
                        <p class="footer-list-title">Our links</p>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Home</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">About Us</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Rating</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Booking</a>
                    </li>

                  

                </ul>

              

                <ul class="footer-list">

                    <li>
                        <p class="footer-list-title">Contact Us</p>
                    </li>

                    <li class="footer-item">

                        <div class="footer-item-icon">
                            <ion-icon name="call"></ion-icon>
                        </div>

                        <div>
                        
                            <a href="tel:+2486871365" class="footer-item-link">+111-222-3333</a>
                        </div>

                    </li>

                    <li class="footer-item">

                        <div class="footer-item-icon">
                            <ion-icon name="mail"></ion-icon>
                        </div>

                        <div>
                          
                            <a href="https://www.youtube.com/watch?v=w0AOGeqOnFY&ab_channel=JeffLau" class="footer-item-link">Kokonut~kokonut.com</a>
                        </div>

                    </li>

                    <li class="footer-item">

                        <div class="footer-item-icon">
                            <ion-icon name="location"></ion-icon>
                        </div>

                        <address class="footer-item-link">
              Genting Highlands, 69000 Genting Highlands, Pahang
            </address>

                    </li>

                </ul>

            </div>
        </div>

        <div class="footer-bottom">
            <p class="copyright">
                &copy; 2022 <a href="#" class="copyright-link">YoungPeace</a>. All Right Reserved
            </p>
        </div>

    </footer>





    <!-- 
    - #GO TO TOP
  -->

    <a href="#top" class="go-top  active" aria-label="Go To Top" data-go-top>
        <ion-icon name="arrow-up-outline"></ion-icon>
    </a>




    <!-- 
    - custom js link
  -->
    <script src="./assets/js/script.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- 
    - ionicon link
  -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


            <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
      <script>
          document.querySelector('html').classList.remove('no-js');
          if (!window.Cypress) {
              const scrollCounter = document.querySelector('.js-scroll-counter');

              AOS.init({
                  mirror: true
              });

              document.addEventListener('aos:in', function (e) {
                  console.log('in!', e.detail);
              });

              window.addEventListener('scroll', function () {
                  scrollCounter.innerHTML = window.pageYOffset;
              });
          }
      </script>


            
            <script>
                var dd_main = document.querySelector(".dd_main");

                dd_main.addEventListener("click", function () {
                    this.classList.toggle("active");
                })
            </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        $(function () {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if (month < 10)
                month = '0' + month.toString();
            if (day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;

            $('#checkInDate').attr('min', maxDate);
            $('#checkOutDate').attr('min', maxDate);
        });
        
    </script>
        
       






