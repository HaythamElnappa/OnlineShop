<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebFormProject.Cart" %>

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
            margin: 0px;
            padding: 0px;
            background-color: #FFFFFF;
            color: #000000;
        }
        #Label6{
            color:red;
        }
        .auto-style2 {
            width: 100%;
            background-color:rgb(233,233,233);
            border-left-style: none;
            border-right-style: none;
            border-top-style: solid;
            border-top-color: #A0A0A0;
            border-bottom-style: solid;
            border-bottom-color: #A0A0A0;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
           
            width: 213px;
        }
        .auto-style6 {
           
        }
        .auto-style8 {
            text-align: left;
            
            width: 253px;
        }
        .auto-style9 {
            width: 253px;
        }
        
        .auto-style10 {
            text-align: left;
            margin:0px;
            padding:0px;
        }
        
        .auto-style11 {
            width: 254px;
        }
        .auto-style12 {
            text-align: left;
            width: 275px;
        }
        .auto-style13 {
            width: 255px;
        }
        .auto-style14 {
            width: 275px;
        }
        
        .auto-style15 {
            width: 213px;
        }
        
        .auto-style16 {
            color: #FF0000;
        }
        #row{
            box-shadow: 0px 5px 10px black;
        }

         body{
                 background: linear-gradient(230deg,#502eff,#ff2efd,#2ec6ff);
            background-size: 300% 300%;
          
            animation: AnimationName 60s ease infinite;
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
        <div class=" container">
        
        
         
               
                    <div class="row" >
                        <div class="col-md-12"><h1 class="display-3">Your product cart</h1></div>

                    </div>





                       <asp:DataList ID="DataList1" runat="server" DataKeyField="Cart_Id" DataSourceID="SqlDataSource1"  RepeatLayout="Flow" >
                <ItemTemplate>
                    <div class="row bg-light border border-dark" id="row">
                       
                      
                         <div class="col-md-3 my-auto">
                             <asp:Image ID="Image_product" runat="server" CssClass=" "  ImageUrl='<%# Eval("Image_path") %>' Height="150" Width="150" />
                         </div>
                        <div class="col-md-3 my-auto">
                            <div class="row">
                                <div class="col-md-8">
                                     <h2><asp:Label ID="Label_prpductName" runat="server" Text='<%# Eval("Name") %>'></asp:Label></h2>
                            <h4 class="text-secondary"><asp:Label ID="Label_category" runat="server" Text='<%# Eval("cat_Name") %>'></asp:Label></h4>
                                </div>
                                <div class="col-md-4 my-auto">
                                   <h6 class="text-center">Quantity</h6>
                                    <p class="text-center"><asp:Label ID="Label_quantityInCart" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label></p>
                                </div>
                            </div>
                           
                        </div>
                        <div class="col-md-3 my-auto">
                          <h6 class="text-center">Edit Quantity</h6>  
                  <h6 class="text-center">      <asp:TextBox ID="txt_edit" CssClass='<%# Eval("P_Id") %>' runat="server"  OnTextChanged="TextBox1_TextChanged" TextMode="Number" Width="50" CausesValidation="True" style="border-style: outset; "></asp:TextBox></h6> 
                                
                       </div>
                        <div class="col-md-3 my-auto">
                            <div class="row">
                            <div class="col-6">
                                <h6 class="text-center my-auto">Price</h6> 
                       <h6 class="text-center my-auto">  <asp:Label ID="Label_promotedPrice" runat="server" Text='<%# Eval("price") %>'></asp:Label></h6> 

                            </div>
                            <div class="col-md-6 my-auto">
                       <asp:ImageButton ID="ImageButton_Remove" runat="server" Height="75px" ImageUrl="img/recycle-bin.png" OnClick="ImageButton_Remove_Click" Width="75px" CommandArgument='<%# Eval("P_Id") %>' CommandName="Remove_product_fromCart" />

                            </div>
                           </div>
                        </div></div>

                         

                        







                  
                      </ItemTemplate>
            </asp:DataList>
           
                    

            <div class="row my-5">
                        <div class="col-md-6 my-auto"><a href="Home.aspx" class="h5">Back to Home</a></div>
                        <div class="col-md-6 text-right my-auto pr-5" id="CartTotalPrice" runat="server">  </div>

                        

                    </div>
                

            </div>


      
        





















        
           
          <%-- <  <div class="auto-style10">
           asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataKeyField="Cart_Id" DataSourceID="SqlDataSource1" Width="69%" RepeatLayout="Flow" >
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>




               <asp:ImageButton ID="ImageButton_Remove" runat="server" Height="53px" ImageUrl="~/Images/remove.png" OnClick="ImageButton_Remove_Click" Width="80px" CommandArgument='<%# Eval("P_Id") %>' CommandName="Remove_product_fromCart" />











                            <td class="auto-style11" rowspan="7">
                                <asp:Image ID="Image_product" runat="server"  ImageUrl='<%# Eval("Image_path") %>' Width="100px" />
                            </td>
                            <td colspan="2">category:</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_category" runat="server" Text='<%# Eval("cat_Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">product Name : </td>
                            <td class="auto-style14">
                                <asp:Label ID="Label_prpductName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">Product ID : </td>
                            <td class="auto-style14">
                                <asp:Label ID="Label_productId" runat="server" Text='<%# Eval("P_Id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="3"><hr /></td>
                        </tr>
                        <tr>
                            <td class="auto-style15">price : &nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_promotedPrice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                &nbsp;EG<br /></td>
                            <td class="auto-style14">
                                <asp:Label ID="Label5" runat="server" Text="after promotion"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Quantity :</td>
                            <td class="auto-style6">
                                <asp:Label ID="Label_quantityInCart" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                            </td>
                            <td class="auto-style14">
                                Edit Quantity :</td>
                            <td class="auto-style13">&nbsp;<asp:TextBox ID="txt_edit" CssClass='<%# Eval("P_Id") %>' runat="server"  OnTextChanged="TextBox1_TextChanged" TextMode="Number" CausesValidation="True" style="border-style: outset; border-width: 3px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Total :</td>
                            <td class="auto-style8">
                                <asp:Label ID="Label_TotalProduct_price" runat="server" Text='<%# Eval("Tprice") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                only &quot; <strong>
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text='<%# Eval("product_Quantity") %>'></asp:Label>
                                </strong>&quot; left in stock!</td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="4"><hr /></td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="4">
                                <asp:ImageButton ID="ImageButton_Remove" runat="server" Height="53px" ImageUrl="~/Images/remove.png" OnClick="ImageButton_Remove_Click" Width="80px" CommandArgument='<%# Eval("P_Id") %>' CommandName="Remove_product_fromCart" />
                            </td>
                        </tr>
                    </table>
                    <br />
                   
              <%--  </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Button" /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectConnectionString %>" SelectCommand="SELECT c.Cart_Id, c.Quantity, c.Quantity * (p.Price - p.Price * p.Promotion) AS Tprice, c.P_Id, p.Name, p.Price - p.Price * p.Promotion AS price, p.Image_path, p.Promotion, p.Quantity AS product_Quantity, cat.Name AS cat_Name FROM Cart AS c INNER JOIN Product AS p ON c.P_Id = p.P_Id INNER JOIN Category AS cat ON p.Cat_Id = cat.Cat_Id WHERE (c.Cart_Id = 1)"></asp:SqlDataSource>
      --%>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectConnectionString %>" SelectCommand="SELECT c.Cart_Id, c.Quantity, c.Quantity * (p.Price - p.Price * p.Promotion) AS Tprice, c.P_Id, p.Name, p.Price - p.Price * p.Promotion AS price, p.Image_path, p.Promotion, p.Quantity AS product_Quantity, cat.Name AS cat_Name FROM Cart AS c INNER JOIN Product AS p ON c.P_Id = p.P_Id INNER JOIN Category AS cat ON p.Cat_Id = cat.Cat_Id WHERE "></asp:SqlDataSource>
        <div class="container-fluid">








            <div class="row">
                <div class="offset-2 col-md-8 mb-4">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block text-uppercase font-weight-bold" Text="purchase" OnClick="Button1_Click" />
                </div>
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
