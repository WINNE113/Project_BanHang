<%-- 
    Document   : CheckOut
    Created on : Mar 7, 2022, 12:47:23 PM
    Author     : ASUS-PRO
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="Entity.ProductCart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Electro - HTML Ecommerce Template</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <!-- HEADER -->
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- /HEADER -->

            <!-- NAVIGATION -->
        <jsp:include page="Header_Menu.jsp"></jsp:include>
            <!-- /NAVIGATION -->

            <!-- BREADCRUMB -->
            <div id="breadcrumb" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="breadcrumb-header">Checkout</h3>
                            <ul class="breadcrumb-tree">
                                <li><a href="load">Home</a></li>
                                <li class="active">Checkout</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /BREADCRUMB -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <form action="checkout" method="POST">
                            <div class="col-md-7">
                                <!-- Billing Details -->
                                <div class="billing-details">
                                    <div class="section-title">
                                        <h3 class="title">Billing address</h3>
                                    </div>
                                    <!--                            <div class="form-group">
                                                                    <input class="input" type="text" name="first-name" placeholder="First Name">
                                                                </div>-->
                                    <div class="form-group">
                                        <input class="input" type="text" name="fullName" placeholder="Full Name">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="email" name="email" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="address" placeholder="Address">
                                    </div>
                                    <!--                            <div class="form-group">
                                                                    <input class="input" type="text" name="city" placeholder="City">
                                                                </div>-->
                                    <div class="form-group">
                                        <input class="input" type="tel" name="tel" placeholder="Telephone">
                                    </div>
                                    <!--                            <div class="form-group">
                                                                    <input class="input" type="text" name="country" placeholder="Country">
                                                                </div>-->
                                    <!--                            <div class="form-group">
                                                                    <input class="input" type="text" name="zip-code" placeholder="ZIP Code">
                                                                </div>-->
                                    <div class="form-group">
                                        <input class="input" type="text" name="note" placeholder="Note">
                                    </div>

                                    <div class="form-group">
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="create-account">
                                            <label for="create-account">
                                                <span></span>
                                                Create Account?
                                            </label>
                                            <div class="caption">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                                                <input class="input" type="password" name="password" placeholder="Enter Your Password">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Billing Details -->

                                <!-- Shiping Details -->
                                <div class="shiping-details">
                                    <div class="section-title">
                                        <h3 class="title">Shiping address</h3>
                                    </div>
                                    <div class="input-checkbox">
                                        <input type="checkbox" id="shiping-address">
                                        <label for="shiping-address">
                                            <span></span>
                                            Ship to a diffrent address?
                                        </label>
                                        <div class="caption">
                                            <div class="form-group">
                                                <input class="input" type="text" name="first-name" placeholder="First Name">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="last-name" placeholder="Last Name">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="email" name="email" placeholder="Email">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="address" placeholder="Address">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="city" placeholder="City">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="country" placeholder="Country">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="zip-code" placeholder="ZIP Code">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="tel" name="tel" placeholder="Telephone">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Shiping Details -->

                                <!-- Order notes -->
                                <div class="order-notes">
                                    <textarea class="input" placeholder="Order Notes"></textarea>
                                </div>
                                <!-- /Order notes -->
                            </div>

                            <!-- Order Details -->
                            <div class="col-md-5 order-details">
                                <div class="section-title text-center">
                                    <h3 class="title">Your Order</h3>
                                </div>

                                <div class="order-summary">
                                    <div class="order-col">
                                        <div><strong>PRODUCT</strong></div>
                                        <div><strong>TOTAL</strong></div>
                                    </div>

                                <%  HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
                                    for (Map.Entry<Integer, ProductCart> en : cart.entrySet()) {
                                        Integer key = en.getKey();
                                        ProductCart productCart = en.getValue();
                                %>  
                                <div class="order-products">
                                    <div class="order-col">
                                        <div><%= productCart.getQuantity()%>x <%= productCart.getProduct().getTitle()%></div>
                                        <div><%= productCart.getProduct().getPrice() * productCart.getQuantity()%></div>
                                    </div>
                                </div>
                                <% }%>
                                <div class="order-col">
                                    <div>Shiping</div>
                                    <div><strong>FREE</strong></div>
                                </div>
                                <div class="order-col">
                                    <div><strong>TOTAL</strong></div>
                                    <div><strong class="order-total">${totalPrice}</strong></div>
                                </div>
                            </div>

                            <div class="payment-method">
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-1">
                                    <label for="payment-1">
                                        <span></span>
                                        Direct Bank Transfer
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-2">
                                    <label for="payment-2">
                                        <span></span>
                                        Cheque Payment
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-3">
                                    <label for="payment-3">
                                        <span></span>
                                        Paypal System
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="input-checkbox">
                                <input type="checkbox" id="terms">
                                <label for="terms">
                                    <span></span>
                                    I've read and accept the <a href="#">terms & conditions</a>
                                </label>
                            </div>
                            <input type="submit" class="primary-btn order-submit" value="ORDER">
                        </div>
                        <!-- /Order Details -->
                    </form>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

        <!-- NEWSLETTER -->
        <div id="newsletter" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="newsletter">
                            <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                            <form>
                                <input class="input" type="email" placeholder="Enter Your Email">
                                <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                            </form>
                            <ul class="newsletter-follow">
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /NEWSLETTER -->

        <!-- FOOTER -->
        <jsp:include page="Footer.jsp"></jsp:include>    
        <!-- /top footer -->

        <!-- bottom footer -->
        <div id="bottom-footer" class="section">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul class="footer-payments">
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                        </ul>
                        <span class="copyright">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </span>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->

    <!-- jQuery Plugins -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>

</body>
</html>
