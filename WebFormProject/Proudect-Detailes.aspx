<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proudect-Detailes.aspx.cs" Inherits="WebFormProject.Proudect_Detailes" %>

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
    <style type="text/css">
        .auto-style1 {
            font-style: italic;
            font-size: xx-large;
             
        }

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
        .details{
            width :50%;
            height: 50%;
            font-size: large;
            margin :auto 0 ;
            text-wrap :normal;
            word-wrap: break-word;
        }
        .flex-container {
            display: flex;
            
            justify-content: center;
            width : 100%;
        }
        .center {
            margin :10px 30% ;
        }
        #addToCart{
            margin-left : 50% ;

        }
        .details_labels{
            padding-left:50px;
        }

        h3{
            margin-bottom:0;
        }
       #Label_inSteadOf{
           color:red;
           font-size:20px ;
           font-style:italic ;
           font-weight: bold; 
       }
       #Label_OldPrice{
           color:red;
           text-decoration:line-through;
       }
       #Image_Product{
           margin:50px;
           max-width:400px;
           
       }
         body{
                 background: linear-gradient(230deg,#502eff,#ff2efd,#2ec6ff);
            background-size: 300% 300%;
          
            animation: AnimationName 60s ease infinite;
        }
         #addToCart{
                 box-shadow: 0px 5px 10px black;
         }
.display-5 {
    font-size: 2.5rem;
    font-weight: 300;
    line-height: 1.2;
}
   @-webkit-keyframes AnimationName {
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
}
@-moz-keyframes AnimationName {
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
}
@keyframes AnimationName { 
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
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
        <a class="nav-link " href="contact us.aspx">Contact us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle  text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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







        <div class=" container">
            <div class="row">
                <div class="pl-3 col-md-8">
                     <h1 class="display-3 font-weight-bold" id="productName" runat="server">  </h1>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-4 ">
                    <asp:Image ID="Image_Product" runat="server" AlternateText ="image can't be loaded..."   />
                </div>
                <div class=" offset-1 col-md-7 mt-5 pt-2">
                    
                    <div class="row mt-5 border">
                        <div class="col-md-6 ">
                            <h1 class="lead display-5 ">PRICE</h1>
                             <asp:Label ID="Label_inSteadOf" class="details_labels" runat="server" Text=""></asp:Label>               
                <asp:Label ID="Label_OldPrice" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <p class="lead display-5" id="price" runat="server"></p>
                        </div>
                    </div>
                    <div class="row border mt-5">
                        <div class="col-md-6">
                            <p class="lead display-5 text-capitalize">Promotion</p>
                        </div>
                        <div class="col-md-6">
                            <p class="lead display-5" id="Promotion" runat="server"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="offset-1 col-md-10">
                    <p class="lead border p-3 shadow bg-light" style="    box-shadow: 0px 5px 10px black;" id="description" runat="server"></p>
                </div>
            </div>
            <div class="row">
                <asp:Button ID="addToCart" runat="server" CssClass="btn btn-block btn-primary my-5" Text="add to cart" OnClick="addToCart_Click" />
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

    <script src="js/jquery-min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

