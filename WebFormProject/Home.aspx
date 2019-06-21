<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebFormProject.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      
   
    <title>SHOPINIA</title>
    <link rel="shortcut icon" href="img/logo.png" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <!-- Font -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
  
    <!-- Animate -->
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
     <link rel="stylesheet" type="text/css" href="css/twentytwenty.css"/>
    <link href="https://fonts.googleapis.com/css?family=Black+Ops+One|Calligraffitti|Dancing+Script|Lobster+Two|Yesteryear" rel="stylesheet"/>
    <style>
        footer li{
              list-style:none
          }
        footer  a{
              color:white;
              text-decoration:none;
          }
       footer   a:hover{
              color:cornflowerblue;
              text-decoration:none;
          }
        .cards {
            display: flex;
            --distance: -4rem;
            max-height: 500px;
             
        }
      

        .card {
            background: #17141d;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 4px 14px 12px 2px rgba(0, 0, 0, 0.75);
            transition: 0.3s;
            max-width: 250px;
            max-height: 500px;
            overflow: hidden;
            
        }

            .card:not(:first-child) {
                margin-left: var(--distance);
            }

            .card:hover, .card:focus-within {
                transform: translateY(-1rem);
                background: linear-gradient(to bottom right, #f1afff, #a3e8ff);
                box-shadow: 4px 4px 10px 2px white;
                color: white;
            }

                .card:hover a, .card:focus-within a {
                    color: white;
                }

                .card:hover ~ .card, .card:focus-within ~ .card {
                    transform: translateX(calc(var(--distance) * -1));
                }

        #cat1 >a {
            text-decoration: none;
            transition: 0.2s;
            color: #d67a89;
            text-transform: uppercase;
        }

        #cat1 >p {
            color: white;
            height: 100px;
        }

        #mob {
            color: #324047;
            text-shadow: 4px 15px 9px black;
            margin-top: 25px;
            margin-bottom: 25px;
        }

       

        .mycolor{
            background-color:#ededed;
        }
    #tv ,#Button2{ 
        background:#07002a;
       
          color: #b6a8ff;

    }
    #tv {
        margin-bottom:0 !important;
    }
        #Btntv {
            cursor: pointer;
            color: #fff !important;
            font-weight:bolder;
            text-transform: uppercase;
            background: #030015;
            padding: 20px;
            border-radius: 50px;
            display: inline-block;
            border: none;
            box-shadow:0px 5px 10px black;
        }

        #tv > div > h1 {
            text-shadow: 2px 17px 9px black !important;
            font-family: 'Lobster Two', cursive;
        }


        #Btntv:hover {
            text-shadow: 0px 0px 6px rgba(255, 255, 255, 1);
            box-shadow: 0px 5px 40px -10px black;
            transition: all 0.4s ease 0s;
            font-weight:bolder;
        }
        .lighttext{
                color: #fff;
                 text-shadow: 0 0 5px #fff, 0 0 20px #0184fe, 0 0 30px #0184fe;
        }
        #btncar{
            background:#030015;
            box-shadow:0px 5px 10px black;
            color:white;
        }
        #logotxt{
            color:#0c0140;
            padding:0
        }
        #car{
            color:#030015;
            background:#b6a8ff;
            margin-top:0  !important;

        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header-wrap">
      <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand h3" id="logotxt" href="Home.aspx"><b>SHOPINIA</b> <img src="img/logo.png" width="50" height="50" /></a>
 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="contact us.aspx">Contact us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown" id="catdropdownlist" runat="server">
         
            
          
        </div>
      </li>

    </ul>
    <div class="form-inline my-2 my-lg-0">
        <a href="Cart.aspx" class="nav-link"> <img src="img/63007-shopping-cart-icon.png"  width="50" height="50" /> </a>
        <asp:TextBox ID="txtsearch" runat="server"  CssClass="form-control mr-sm-2" ></asp:TextBox>
         <asp:Button ID="btnsearch" BorderWidth="0" runat="server" Text="search" CssClass="btn btn-outline-success my-2 my-sm-0" OnClick="btnsearch_Click" />
    </div>
  </div>
</nav>







            



    
        <div id="sliders">
        <div class="full-width">
          <!-- light slider -->
          <div id="light-slider" class="carousel slide">
            <div id="carousel-area">
              <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-slider" data-slide-to="1"></li>
                  <li data-target="#carousel-slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                  <div class="carousel-item active">
                    <img src="img/slider1.jpg" class="d-block slid w-100"  alt=""/>
                    <div class="carousel-caption">
                      <h3 class="slide-title animated fadeInDown"><span>Helium</span> - Bootstrap 4 UI Kit</h3>
                      <h5 class="slide-text animated fadeIn">Lorem ipsum dolor sit amet, consectetuer adipiscing elit<br/> Curabitur ultricies nisi Nam eget dui. Etiam rhoncus</h5>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img src="img/slider2.jpg" class="d-block slid w-100" alt=""/>
                    <div class="carousel-caption">
                      <h3 class="slide-title animated fadeInDown"><span>Cutting-edge</span> Features</h3>
                      <h5 class="slide-text animated fadeIn">Lorem ipsum dolor sit amet, consectetuer adipiscing elit<br/> Curabitur ultricies nisi Nam eget dui. Etiam rhoncus</h5>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img src="img/slider3.jpg" class="d-block slid w-100" alt=""/>
                    <div class="carousel-caption">
                      <h3 class="slide-title animated fadeInDown"><span>100+</span>PEST MOBILE IN THE HOLE WORLD</h3>
                      
                      <a href="displayitems.aspx?cat=1" class="btn btn-lg btn-border animated fadeInUp">Get Started</a>
                      
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carousel-slider" role="button" data-slide="prev">
                  <i class="fa fa-chevron-left"></i>
                </a>
                <a class="carousel-control-next" href="#carousel-slider" role="button" data-slide="next">
                  <i class="fa fa-chevron-right"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
</header>
        <nav  class=" container-fluid">
            <div class="row mycolor">
                <div>
                    <h1 id="mob" class=" display-1 pl-5 wow lightSpeedIn" data-wow-duration="1s" data-wow-delay=".1s">MOBILE CATEGORY</h1>
                </div>
                <div id="cat1" class="row ml-md-4" runat="server">

                </div></div>
        </nav>
        
        <nav class=" container-fluid mt-5">
            <div class="row p-5"  id="tv">
               <div class="col-md-6 mt-5" id="ltv" runat="server"> 
                   <h1 class="text-center display-1 text-capitalize">your futcher tv just here</h1>
                <h4 class="text-uppercase mt-5 pt-5">4K Cinema HDR,delivering the filmmaker's vision</h4>
                
                </div>
               <div class="col-md-6 mt-5"> 

                   <asp:Image ID="imgtv" runat="server" />
                   <asp:Button ID="Btntv" runat="server" Text="GET IT REIGHT NOW" CssClass="btn-block  btn-danger p-3" OnClick="Btntv_Click" />
                </div>
                   
            </div>
        </nav>
        <nav class=" container-fluid mt-5" id="car">
            <div class="row p-5"  ">
                <div class="col-md-6 mt-5">
                    <div id="container1">
                        <img src="img/bmwi8.jpg"  />
                      <img src="img/bmww.jpg"  />
               </div>
                </div>
               <div class="col-md-5 offset-1">
                    <h1 class="display-1  wow fadeInLeft" data-wow-duration="1.5s" data-wow-delay=".1s">BMW I8</h1>
                   <p class="lead">Most cars are style items in one way or another; ideally, a car's form will match its function, as in the case of many an aggressively designed supercar. But in some cases, the form is all that matters. See a BMW i8 rolling down the street and you'll immediately take notice. It's hard to think of a car on the road today that looks more like it was zapped out of a video game, Jumanji style. Unfortunately the i8's plug-in powertrain can't cash the checks written by its zany design. With 369 horsepower and an estimated 18 miles of all-electric range, the i8 can't keep up with either the best sports cars or the best plug-ins on the market. But for drivers who value curb appeal and exclusivity above all else, none of that may matter.</p>

                   <asp:Button ID="btncar" runat="server" Text="GET IT NOW" OnClick="btncar_Click"  CssClass="btn-block  text-white p-2  h5" ForeColor="White" />
               </div>
                
                   
            </div>
        </nav>
        
        <footer class="footer bg-dark pt-3 text-white">
      <!-- Container Starts -->
      <div class="container">
        <!-- Row Starts -->
        <div class="row section">
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-xs-12 wow fadeIn">
            <h3 class="small-title text-primary">
              About Us
            </h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis veritatis eius porro modi hic. Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            </p>
            <div class="social-footer">
              <a href="#"><i class="fa fa-facebook icon-round"></i></a>
              <a href="#"><i class="fa fa-twitter icon-round"></i></a>
              <a href="#"><i class="fa fa-linkedin icon-round"></i></a>
              <a href="#"><i class="fa fa-google-plus icon-round"></i></a>
            </div>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget  col-md-3 col-xs-12 wow fadeIn" data-wow-delay=".2s">
            <h3 class="small-title text-primary">
              Links
            </h3>
            <ul class="pl-0 ">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Works</a></li>
              <li><a href="#">Pricing</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget  col-md-3 col-xs-12 wow fadeIn" data-wow-delay=".5s">
            <h3 class="small-title text-primary">
              Last permotion
            </h3>
            <div class="plain-flicker-gallery">
                <ul id="pormotionlist" runat="server" class="pl-0">



                </ul>
          
            </div>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-xs-12 wow fadeIn" data-wow-delay=".8s">
            <h3 class="small-title text-primary">
              New produeccts
            </h3>
            <div class="contact-us">
              <ul id="lastprouduect" runat="server" class="pl-0">



                </ul>
            </div>
          </div>
          <!-- Footer Widget Ends -->
        </div>
        <!-- Row Ends -->
      </div>
      <!-- Container Ends -->

      <!-- Copyright -->
      <div id="copyright">
        <div class="container">
          <div class="row">
            <div class=" col-md-6 col-xs-12">
              <p class="copyright-text mt-4 pt-2">All copyrights reserved © 2018 - Designed &amp; Developed by <a>logic</a>
              </p>
            </div>
           
          </div>
        </div>
      </div>
      <!-- Copyright  End-->

    </footer>

    </form>
    <script src="js/jquery-min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.mixitup.js"></script>
    <script src="js/jquery.countTo.js"></script>
    <script src="js/jquery.nav.js"></script>
    <script src="js/scrolling-nav.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/main.js"></script>
    <script src="js/jquery.twentytwenty.js"></script>
    <script src="js/jquery.event.move.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script>
        var wow = new WOW(
            {
                boxClass: 'wow',      // animated element css class (default is wow)
                animateClass: 'animated', // animation css class (default is animated)
                offset: 0,          // distance to the element when triggering the animation (default is 0)
                mobile: true,       // trigger animations on mobile devices (default is true)
                live: true,       // act on asynchronously loaded content (default is true)
                callback: function (box) {
                    // the callback is fired every time an animation is started
                    // the argument that is passed in is the DOM node being animated
                },
                scrollContainer: null // optional scroll container selector, otherwise use window
            }
        );
        wow.init();


        $(window).load(function () {
            
            $("#container1").twentytwenty({
    default_offset_pct: 0.5, // How much of the before image is visible when the page loads
    orientation: 'horizontal', // Orientation of the before and after images ('horizontal' or 'vertical')
    before_label: 'January 2017', // Set a custom before label
    after_label: 'March 2017', // Set a custom after label
    no_overlay: true, //Do not show the overlay with before and after
    move_slider_on_hover:false, // Move slider on mouse hover?
    move_with_handle_only: true, // Allow a user to swipe anywhere on the image to control slider movement. 
    click_to_move: true // Allow a user to click (or tap) anywhere on the image to move the slider to that location.
  });
        });
    </script>
</body>
</html>
