<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="WebFormProject.OrderPage" %>

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
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>

  
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 286px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">



        <div class=" container">
          
               
                <div class="row">
                    <div class="col-md-4">
                        <h4 id="ordernum" runat="server">ORDER <br /> NUMBER</h4>

                    </div>
                    <div class="col-md-4">
                        <h3>REQUIREMENT</h3>
                        <ul id="req" runat="server">

                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3 id="state" runat="server">state</h3>
                    </div>
                </div>
             

                <div class="row">
                    <div class=" offset-2 col-md-2">
                        <h6>all price</h6>
                        <h6 id="allprice" runat="server"></h6>
                    </div>
                    <div class="col-md-4">

                    </div>
                </div>
             <div class="row">
                    <div class="col-md-12 ">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </div>
                </div>
            
        </div>



        <div>
            Orders Info<br />
            <br />
            <div id="orders_div" runat="server"> </div>

            <div id="ordersProduct_div" runat="server"> </div>

            </div>
        
    </form>
    
    <script src="js/particles.js"></script>
    <script src="js/app.js"></script>
 
    <script src="js/jquery-min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

