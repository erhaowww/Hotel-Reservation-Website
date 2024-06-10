<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog2.aspx.cs" Inherits="PeaceHotel.Test" %>



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
    <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

    <!-- 
    - custom css link
  -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link rel="stylesheet" href="../assets/css/blog.css">
    <link rel="stylesheet" href="../assets/css/style.css">

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

    
            
   <% bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;   %>


    <style>
                input#Button1 {
    width: 199px;
}

        input#BtnUploadFile {
    width: 218px;
    color: black;
    height: 32px;
}
        .RemoveBtn {
    width: 122px !important;
    color: red;
    border: 1px solid red;
    /* display: inline-block; */
}

        div#FileUploadContainer {
    display: inline-flex;
}

        input#BtnUploadFile {
    width: 218px;
    color: black;
    height: 32px;
    margin-top: 74px;
}

        input#BtnUploadFile {
    width: 218px;
    color: black;
    height: 32px;
    /* margin-top: 74px; */
    position: relative;
    top: -59px;
}
        .panel {
    box-shadow: 0 2px 0 rgb(0 0 0 / 8%);
    border-radius: 0;
    border: 0;
    margin-bottom: 18px;
    height: 400px;
}
        .panel-body2 {
    margin-top: 122px;
}
        #container {
    display: flex;
    width: 1100px;
}

        .btn-group {
    display: none;
}

        .media-block .media-body {
    display: block;
    overflow: hidden;
    width: auto;
    /*padding: 10px;*/
    margin-bottom: 27px !important;
}
        .imagePost {
    margin-bottom: 70px;
}
        .error{
            color:red;
        }

        hr {

    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #ccc;
    margin: 1em 0;
    padding: 0;

}
    </style>
    
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
                   <a href="../assets/images/Acc.jpg" class="logo">Peace</a>
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
                        <a href="blog.aspx" class="navbar-link" data-navbar-link><span id="navText">BLOG</span></a>
                    </li>

                                 <%--Mobile View--%>
                                <div class="mobile-link">
                                    <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">EDIT PROFILE</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">ADMIN PAGE</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">BOOKED ROOMS</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">VIEWED ROOMS</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">CHANGE PASSWORD</span></a>
                                    </li>
                                     <li class="navbar-item">
                                        <a href="#services" class="navbar-link" data-navbar-link><span id="navText">LOGOUT</span></a>
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
                        <a href="login.aspx" class="navbar-link" data-navbar-link><span id="navText">LOGIN</span></a>
                    </li>
                    <% } %>
					
					<div class="dd_menu">
						<div class"space" style="content="";height=30px;" >
						<div class="dd_right">
                            <div class="imageAcc">
                                <img src="../assets/images/Acc.jpg" alt="Acc">
                                <%--<div class="centered">Sign up to our Peace member<br />to stay connected to Peace Place</div>--%>
                                       <div class="centered">Welcome to our Peace member<br />to stay connected to Peace</div>
                                <a href="UserProfile.aspx"> <button class="AccButton">VIEW PROFILE</button></a>
                               
                            </div>
                              <p class="HeadText">PEACE PLACE</p>
                            <ul>


                                     

                                           <%if (System.Web.HttpContext.Current.User.IsInRole("Admin")) { %>

                                <li><a class="cool-link" href="../../AdminPage/add-product.aspx">ADMIN PAGE</a></li>
                                <% } %>
                                <li><a class="cool-link" href="bookedRooms.aspx">BOOKED ROOMS</a></li>
                                <li><a class="cool-link" href="saved.aspx">SAVED ROOMS</a></li>
                                <li><a class="cool-link" href="Profile/ForgetPassword.aspx">CHANGE PASSWORD</a></li>
           
                        

          

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

            <a href="../../UserPage/Home.aspx">
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

            <%-- <div id="full-screen" class="full-screen">
                <video src="./assets/images/hotelvideo.mp4" id="video" class="video" autoplay muted></video>
            </div> --%>




            <!-- <section class="hero" id="slide"> -->
            <section id="slide">
                <div class="slider">
                    <div class="slide active">
                        <img src="../../UserPage/assets/images/Slide1.jpg" alt="">
                        <div class="info">
                            <h2>SPECIOUS RETREATS</h2>
                            <span class="slideText"><p>Dive into summer at Peace's luxurious, nature-blessed resorts, where expansive villas embrace stunning indoor-outdoor living for memorable moments..</p></span>
                            <a href="Rooms.aspx"><button class="btn" onclick="playVid()" type="button">Book Now</button></a>
                        </div>
                    </div>
                    <div class="slide">
                        <img src="../../UserPage/assets/images/Slide2.jpg" alt="">
                        <div class="info">
                            <h2>SPECIOUS RETREATS</h2>
                            <span class="slideText"><p>Dive into summer at Peace’s luxurious, nature-blessed resorts, where expansive villas embrace stunning indoor-outdoor living for memorable moments..</p></span>
                            <button class="btn" type="button">Book Now</button>
                        </div>
                    </div>
                    <div class="slide">
                        <img src="../../UserPage/assets/images/Slide.jpg" alt="">
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
            
   

            <form id="form1" runat="server">

            <section class="book">
                <div class="Bookcontainer flex">
                    <div class="input grid">
                        <div class="box">
                            <label>CHECK-IN</label>&nbsp;
                    <asp:TextBox ID="checkInDate" runat="server" ></asp:TextBox>
                            <br />
                        </div>
                        <div class="box">
                            <label>CHECK-OUT</label>
                              <asp:TextBox ID="checkOutDate" runat="server" ></asp:TextBox>
                        </div>
                        <div class="box">
                            <label>ADULTS</label> <br>
                            <input type="number" id="adults" runat="server" min="0" max="8" placeholder="0">
                        </div>
                        <div class="box">
                            <label>CHILDREN</label> <br>
                            <input type="number" id="children" runat="server" min="0" max="8" placeholder="0">
                        </div>
                    </div>
                    <div class="search">
                       <%-- <input type="submit" runat="server" value="CHECK AVAILABILITY">--%>
                         <asp:Button type="submit" ID="Button2" runat="server" Text="CHECK AVAILABILITY"
                        />
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                </div>
            </section>



                
          <%
              String val1="";
              MembershipUser mu = Membership.GetUser();
              if (mu != null)
              {
                   val1 = mu.UserName;
              }


          %>


                 <!-- Text -->

                    <div class="TextContent"  >
                <span class="TextContentspan">
                <h1>
                    GUEST REVIEWS PEACE PLACE 
                </h1>
                <p>Read what guests had to say on their online satisfaction survey, completed after a confirmed stay. For the hotelier, it's a way to increase visibility and improve customer contact, which also has a positive effect on the guests.</p>
            </span>
            </div>

              <!-- Text -->
        

<link rel="stylesheet" href="../UserPage/assets/css/blog.css">


        <%
            if (mu != null)
              {
            %>


       <div class="container bootdey">
           <div class="col-md-12 bootstrap snippets">
               <div class="panel">
                   <div class="panel-body">

                       <div class="col-right">
                           <div class="form-group">
                               <label>REVIEW</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextArea1" Display="Dynamic"  CssClass="error">*</asp:RequiredFieldValidator><br />
                               <textarea id="TextArea1"  class="form-control" placeholder="What are you thinking?" name="S1" runat="server" required="required"></textarea>
                               
                           </div>
                           <div class="form-group">
                               <label>&nbsp</label>
                               <br />
                               <br />
                               <br />
                               <div class="mar-top clearfix">
                                   <%--<button class="btn btn-sm btn-primary pull-right" type="submit">Share</button>--%>
                                  <div class="form-group">  
            <div class="col-md-offset-2 col-md-10">  
                <asp:Button  runat="server" ID="BtnUploadFile" OnClick="BtnUploadFile_Click" Text="Send" CssClass="btn btn-default" />  
               
            </div>  
        </div> 
                               </div>






                           </div>
                       </div>


                       <div class="col-left">
                           <div class="form-group">
                               <label>NAME</label>

                               <input type="text" classname="form-control" value='<%= val1 %>' style="text-transform: uppercase;" disabled />


                           </div>
                           <div class="form-group">
                               <label>RATINGS</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ratingcircle2" Display="Dynamic"  CssClass="error">*</asp:RequiredFieldValidator>
                               <div id="rating-container">

                                  
                                   <%--<input id="ratingcircle2" class="rating-circle" type="hidden" value="0" runat="server" />--%>
                                   <asp:TextBox id="ratingcircle2" style="display:none;" runat="server"></asp:TextBox>
                                   <div class="rating-circle"></div>
                                   <div class="rating-circle"></div>
                                   <div class="rating-circle"></div>
                                   <div class="rating-circle"></div>
                                   <div class="rating-circle"></div>
                               </div>
                           </div>

                        



                       </div>






                       <div class="mar-top clearfix">

                           <div style="margin-top: 176px">

                                   <div class="form-horizontal">  
        <h4 style="color:black;">UPLOAD FILES</h4>  
       
        <asp:ValidationSummary runat="server" CssClass="text-danger" />  
        <div class="form-group">  
     
            <div class="col-md-10" id="MultipleFileUploader">  
                <p>  
                  <%--  <asp:FileUpload runat="server" ID="FileUploader" CssClass="form-control" />  
                    <a href="#" id="AddAnotherUploader">Add Files</a>  --%>

     

    <input id="Button1"  type="button" width="50px" value="add" onclick = "AddFileUpload()" />

    <br /><br />

    <div id = "FileUploadContainer">

        <!--FileUpload Controls will be added here -->

    </div>

    <br />

                </p>  
            </div>  
        </div>  
         
       

                   </div>
               </div>
           </div>



           <%    }
            else { %> 

                              <asp:Button ID="Button4" style="margin:auto;margin-top:20px;margin-bottom:20px;"  Text="Login For Rate And Review" runat="server" ForeColor="Black" Height="30px" Width="250px" PostBackUrl="~/login.aspx" />
 
                  

        <% }  %>
     






                                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />
                     


                       

                 <div class="panel2">
            <div class="panel-body2">
                <!-- Newsfeed Content -->
                <!--===================================================-->
                <div class="media-block">
               
                    <div class="media-body">
                        <div class="mar-btm">                

<div id="container">
  <div class="char ">


    


      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>




      
            
    

          

      
               
      
                    


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select *
from  (
    SELECT
       *,  COUNT(*) OVER (PARTITION BY comment) AS qty
    FROM Blog
    ) Blog
ORDER BY comment"></asp:SqlDataSource>




                 

       <!-- jQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>

    <script src="Scripts/jquery-1.10.2.js"></script>  
    <script type="text/javascript">  
        

        $(function () {
            debugger;
            var DivElement = $('#MultipleFileUploader');
            var i = $('#MultipleFileUploader p').size() + 1;
            $('#AddAnotherUploader').on('click', function () {
                $('<p><input type="file" ID="FileUploader1' + i + '" name="FileUploader1' + i + '" class="form-control" />  
                 </p > ').appendTo(DivElement);  
                i++;
                return false;
            });
        });
    </script>  

        <script type = "text/javascript">

            var counter = 0;

            function AddFileUpload() {

                if (counter<=6) {

               

                var div = document.createElement('DIV');

                div.innerHTML = '<input id="FileUploader1' + counter + '" name = "FileUploader1' + counter +

                    '" type="file" />' +

                    '<input id="Button' + counter + '" type="button" ' +

                    'value="Remove" class="RemoveBtn" required onclick="RemoveFileUpload(this)" />';

                document.getElementById("FileUploadContainer").appendChild(div);

                counter++;
                } else {
                  
                    swal(
                        'Warning!',
                        '7 images is   <b style="color:red;">max</b>',
                        'warning'
                    )

                   
                }
               

      
            }

            function RemoveFileUpload(div) {

                document.getElementById("FileUploadContainer").removeChild(div.parentNode);

            }


           
        </script>


   
      </script> 
                       
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

 <%--           <script> $(function () {
                                         $(function () { var toggleR = 0; $('.replybutton1184').on('click', function () { if (toggleR == 0) { $('.replybox1184').hide(); var commentboxId = $(this).attr('data-commentbox'); $('#' + commentboxId).toggle(); toggleR = 1; } else { $('.replybox1184').hide(); toggleR = 0; } }); });      </script>        <script> $(function () {
         $(function () { var toggleR = 0; $('.replybutton1187').on('click', function () { if (toggleR == 0) { $('.replybox1187').hide(); var commentboxId = $(this).attr('data-commentbox'); $('#' + commentboxId).toggle(); toggleR = 1; } else { $('.replybox1187').hide(); toggleR = 0; } }); });      </script>        <script> $(function () {
         $(function () { var toggleR = 0; $('.replybutton1188').on('click', function () { if (toggleR == 0) { $('.replybox1188').hide(); var commentboxId = $(this).attr('data-commentbox'); $('#' + commentboxId).toggle(); toggleR = 1; } else { $('.replybox1188').hide(); toggleR = 0; } }); });      </script>        <script> $(function () {
         $(function () { var toggleR = 0; $('.replybutton1190').on('click', function () { if (toggleR == 0) { $('.replybox1190').hide(); var commentboxId = $(this).attr('data-commentbox'); $('#' + commentboxId).toggle(); toggleR = 1; } else { $('.replybox1190').hide(); toggleR = 0; } }); });      </script> --%>

     



       <script>


           $(function () {



             


               var toggleR = 0;

               $('.replybutton1184').on('click', function () {

                   if (toggleR == 0) {
                       $('.replybox1184').hide();
                       var commentboxId = $(this).attr('data-commentbox');
                  
                       $('#' + commentboxId).toggle();
                       toggleR = 1;
                   } else {
                       $('.replybox1184').hide();
                       toggleR = 0;

                   }

               });



               var toggle = 0;


               $('.replyDisplay1184').on('click', function () {
                   if (toggle == 0) {
                       $('.reply1184').hide();
                       var commentboxId = $(this).attr('data-commentbox');
                       $('#' + commentboxId).toggle();
                       toggle = 1;
                   } else {
                       $('.reply1184').hide();
                       toggle = 0;
                   }
               });


           }

       </script>


       <script>


           $(function () {


  


               //var toggleR = 0;

               //$('.replybutton1184').on('click', function () {

               //    if (toggleR == 0) {
               //        $('.replybox1184').hide();
               //        var commentboxId = $(this).attr('data-commentbox');
               //        $('#' + commentboxId).toggle();
               //        toggleR = 1;
               //    } else {
               //        $('.replybox1184').hide();
               //        toggleR = 0;

               //    }

               //});



               //var toggle = 0;


               //$('.replyDisplay1184').on('click', function () {
               //    if (toggle == 0) {
               //        $('.reply1184').hide();
               //        var commentboxId = $(this).attr('data-commentbox');
               //        $('#' + commentboxId).toggle();
               //        toggle = 1;
               //    } else {
               //        $('.reply1184').hide();
               //        toggle = 0;
               //    }
               //});


               // Declare some global variables for later use:

               var container = $("#rating-container");
               var index = -1;
               let element = document.getElementById('<%= ratingcircle2.ClientID %>');




               // 1.  Capture the hover event over the div (circle)

               $(".rating-circle").hover(
                   // When the mouse hover over any circle. All the circles to the left change color to yellow
                   function () {
                       $(this).removeClass("rating-chosen").addClass("rating-hover");
                       $(this).prevAll().removeClass("rating-chosen").addClass("rating-hover");
                       $(this).nextAll().removeClass("rating-chosen");
                   },
                   //When the mouse move away, the color yellow disappears:	
                   function () {
                       $(this).removeClass("rating-hover");
                       $(this).prevAll().removeClass("rating-hover");

                       if (index >= 0) {
                           //Return the previously chosen choice (if any) back in green
                           // Recall the choice using its index
                           // "get" returns a DOM element, NOT a jQuery object
                           var chosenCircle = container.children().get(index);
                           //Convert to jQuery object
                           var $rating = $(chosenCircle);

                           //Make them green again
                           $rating.addClass("rating-chosen");
                           $rating.prevAll().addClass("rating-chosen");
                       }
                   }
               );


               // 2. Capture the click event when the user click on a circle.
               // All the circles to the left change color to green 
               // The color stays green as the mouse move away

               $(".rating-circle").click(
                   function () {
                       $(this).addClass("rating-chosen");
                       $(this).prevAll().addClass("rating-chosen");
                       // Remember the position of the click so it can be retrieved later
                       index = $(this).index();
                  <%--     if (index != null) {
                           element.id = index;
                           document.getElementById('<%= ratingcircle2.ClientID %>').value = element.id;
           
                       }--%>


                       console.log(index);

                      

                       document.getElementById('<%= ratingcircle2.ClientID %>').value = index;
                       console.log(document.getElementById('<%= ratingcircle2.ClientID %>').value);
                   }
               );



               function adjust() {
                   txt = document.querySelector("textarea");

                   txt.style.width = "100%";
                   txt.style.height = "100%";
               }





           });



       </script>

        <div>
           
   


        </form>

   <%--     <script type="text/javascript">  
            alert("sdsd");

            $(function () {
                debugger;
                var DivElement = $('#MultipleFileUploader');
                var i = $('#MultipleFileUploader p').size() + 1;
                $('#AddAnotherUploader').on('click', function () {
                    $('<p><input type="file" ID="FileUploader1' + i + '" name="FileUploader1' + i + '" class="form-control" />  
                 </p > ').appendTo(DivElement);  
                i++;
                    return false;
                });
            });
        </script>  --%>


