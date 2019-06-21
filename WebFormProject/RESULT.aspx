<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RESULT.aspx.cs" Inherits="WebFormProject.RESULT" %>

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
        #mycontainer {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            grid-gap: 1em;
            margin: 20px auto;
            margin-left: 30px;
            
        }
        .card{
            background-color:#2e364f;
            color: #ef5939;
            box-shadow:5px 9px 11px black;
            text-shadow:3px 4px 3px black;
            
        }
        body{
            background-color:#f2ebe0
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
         <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 <a class="navbar-brand text-danger" href="Home.aspx">SHOPINIA <img src="img/logo.png" width="50" height="50" /></a>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav  mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link " href="contact us.aspx">Contact us</a>
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



        
    <div class="mycontainer pl-md-auto" id="mycontainer" runat="server" >

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
        <script src="js/jquery-min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
