<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact us.aspx.cs" Inherits="WebFormProject.contact_us" %>

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
      <style>
  body{
  margin:0;
  font: normal 16px Arial, Helvetica, sand-serif;
  color:rgba(255,186,237,1.00);
}

          #particles-js {
              background: linear-gradient(230deg,#502eff,#ff2efd,#F9FF38);
              background-size: 300% 300%;
              animation: AnimationName 60s ease infinite;
              height: 100%;
          }

          #login {
              background: rgba(0,58,52,0.71);
              padding: 2em;
              border: #ccc 2px solid;
             
              margin: 0 auto
          }

            

          @-webkit-keyframes AnimationName {
              0% {
                  background-position: 0% 50%
              }

              50% {
                  background-position: 100% 50%
              }

              100% {
                  background-position: 0% 50%
              }
          }

          @-moz-keyframes AnimationName {
              0% {
                  background-position: 0% 50%
              }

              50% {
                  background-position: 100% 50%
              }

              100% {
                  background-position: 0% 50%
              }
          }

          @keyframes AnimationName {
              0% {
                  background-position: 0% 50%
              }

              50% {
                  background-position: 100% 50%
              }

              100% {
                  background-position: 0% 50%
              }
          }
          .social-links{
              list-style:none;
              display: inline-block
          }
          li{
              list-style:none
          }
          a{
              color:white;
              text-decoration:none;
          }
          a:hover{
              color:cornflowerblue;
              text-decoration:none;
          }
  </style>
</head>
<body>
    <form id="form1" runat="server">
           
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 <a class="navbar-brand " id="logotxt" href="Home.aspx">SHOPINIA <img src="img/logo.png" width="50" height="50" /></a>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav  mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="contact us.aspx">Contact us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle  " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu bg-dark text-white active" aria-labelledby="navbarDropdown" id="catdropdownlist" runat="server">
         
            
          
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
<!-- particles.js container -->
<div id="particles-js" class=" container-fluid">


  <div id="login" class="shadow container" >
    <section id="contact" class=" shadow contact-form section-padding">
      
        <div class="row">
          <div class="col-md-12">
            <h2 class="section-title wow fadeInDown animated display-3" data-wow-delay="0.3s">Contact Us</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 col-md-6 col-xs-12">
            <h3 class="title-head text-left">Get in touch</h3>
              <div class="row">
                
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" Rows="4"  runat="server" TextMode="MultiLine"></asp:TextBox>
                  <div class="help-block with-errors"></div>
                    <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn btn-common btn-form-submit mt-5 btn-lg" OnClick="Button1_Click" />
                  <div id="msgSubmit" class="h3 text-center hidden"></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            
          </div>

          <div class="col-lg-4 col-md-6 col-xs-12">
            <h4 class="contact-info-title text-left">Contact Information</h4>
            <div class="contact-info">
              <address>
              <i class="lni-map-marker icons cyan-color contact-info-icon"></i>
              Level 13, 2 Elizabeth St, Melbourne,
            </address>
              <div class="tel-info">
                <a href="tel:1800452308"><i class="lni-mobile icons cyan-color contact-info-icon"></i>1800 452 308</a>
                <a href="tel:+61(8)82343555"><i class="lni-phone icons cyan-color contact-info-icon"></i>+61 (8) 8234 3555</a>
              </div>
              <a href="mailto:hello@spiritapp.com"><i class="lni-envelope icons cyan-color contact-info-icon"></i>admin@uideck.com</a>
              <a href="#"><i class="lni-tab icons cyan-color contact-info-icon"></i>www.uideck.com</a>
            
            </div>
          </div>
        </div>
      
    </section>
  </div>
</div>

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




    <script src="js/particles.js"></script>
    <script src="js/app.js"></script>
 
    <script src="js/jquery-min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

