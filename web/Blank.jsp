<%-- 
    Document   : Blank
    Created on : Mar 7, 2022, 12:46:51 PM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Edit Product</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">

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
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
        <![endif]-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    </head>
    <body>
        <style>
            * {
                margin: 0;
                padding: 0;
                -webkit-font-smoothing: antialiased;
                -webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
                text-shadow: rgba(0, 0, 0, .01) 0 0 1px
            }

            body {
                font-family: 'Rubik', sans-serif;
                font-size: 14px;
                font-weight: 400;
                background: #E0E0E0;
                color: #000000
            }

            ul {
                list-style: none;
                margin-bottom: 0px
            }

            .button {
                display: inline-block;
                background: #0e8ce4;
                border-radius: 5px;
                height: 48px;
                -webkit-transition: all 200ms ease;
                -moz-transition: all 200ms ease;
                -ms-transition: all 200ms ease;
                -o-transition: all 200ms ease;
                transition: all 200ms ease
            }

            .button a {
                display: block;
                font-size: 18px;
                font-weight: 400;
                line-height: 48px;
                color: #FFFFFF;
                padding-left: 35px;
                padding-right: 35px
            }

            .button:hover {
                opacity: 0.8
            }

            .cart_section {
                width: 100%;
                padding-top: 93px;
                padding-bottom: 111px
            }

            .cart_title {
                font-size: 30px;
                font-weight: 500
            }

            .cart_items {
                margin-top: 8px
            }

            .cart_list {
                border: solid 1px #e8e8e8;
                box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
                background-color: #fff
            }

            .cart_item {
                width: 100%;
                padding: 15px;
                padding-right: 46px
            }

            .cart_item_image {
                width: 133px;
                height: 133px;
                float: left
            }

            .cart_item_image img {
                max-width: 100%
            }

            .cart_item_info {
                width: calc(100% - 133px);
                float: left;
                padding-top: 18px
            }

            .cart_item_name {
                margin-left: 7.53%
            }

            .cart_item_title {
                font-size: 14px;
                font-weight: 400;
                color: rgba(0, 0, 0, 0.5)
            }

            .cart_item_text {
                font-size: 18px;
                margin-top: 35px
            }

            .cart_item_text span {
                display: inline-block;
                width: 20px;
                height: 20px;
                border-radius: 50%;
                margin-right: 11px;
                -webkit-transform: translateY(4px);
                -moz-transform: translateY(4px);
                -ms-transform: translateY(4px);
                -o-transform: translateY(4px);
                transform: translateY(4px)
            }

            .cart_item_price {
                text-align: right
            }

            .cart_item_total {
                text-align: right
            }

            .order_total {
                width: 100%;
                height: 60px;
                margin-top: 30px;
                border: solid 1px #e8e8e8;
                box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
                padding-right: 46px;
                padding-left: 15px;
                background-color: #fff
            }

            .order_total_title {
                display: inline-block;
                font-size: 14px;
                color: rgba(0, 0, 0, 0.5);
                line-height: 60px
            }

            .order_total_amount {
                display: inline-block;
                font-size: 18px;
                font-weight: 500;
                margin-left: 26px;
                line-height: 60px
            }

            .cart_buttons {
                margin-top: 60px;
                text-align: right
            }

            .cart_button_clear {
                display: inline-block;
                border: none;
                font-size: 18px;
                font-weight: 400;
                line-height: 48px;
                color: rgba(0, 0, 0, 0.5);
                background: #FFFFFF;
                border: solid 1px #b2b2b2;
                padding-left: 35px;
                padding-right: 35px;
                outline: none;
                cursor: pointer;
                margin-right: 26px
            }

            .cart_button_clear:hover {
                border-color: #0e8ce4;
                color: #0e8ce4
            }

            .cart_button_checkout {
                display: inline-block;
                border: none;
                font-size: 18px;
                font-weight: 400;
                line-height: 48px;
                color: #FFFFFF;
                padding-left: 35px;
                padding-right: 35px;
                outline: none;
                cursor: pointer;
                vertical-align: top
            }
        </style>
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
                        <li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
                    </ul>
                </div>
            </div>
            <!-- /TOP HEADER -->

            <!-- MAIN HEADER -->
            <div id="header">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- LOGO -->
                        <div class="col-md-3">
                            <div class="header-logo">
                                <a href="#" class="logo">
                                    <img src="./img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->
                        <div class="col-md-6">
                            <div class="header-search">
                                <form>
                                    <select class="input-select">
                                        <option value="0">All Categories</option>
                                        <option value="1">Category 01</option>
                                        <option value="1">Category 02</option>
                                    </select>
                                    <input class="input" placeholder="Search here">
                                    <button class="search-btn">Search</button>
                                </form>
                            </div>
                        </div>
                        <!-- /SEARCH BAR -->

                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Wishlist -->
                                <div>
                                    <a href="#">
                                        <i class="fa fa-heart-o"></i>
                                        <span>Your Wishlist</span>
                                        <div class="qty">2</div>
                                    </a>
                                </div>
                                <!-- /Wishlist -->

                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>Your Cart</span>
                                        <div class="qty">3</div>
                                    </a>
                                    <div class="cart-dropdown">
                                        <div class="cart-list">
                                            <div class="product-widget">
                                                <div class="product-img">
                                                    <img src="./img/product01.png" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                                </div>
                                                <button class="delete"><i class="fa fa-close"></i></button>
                                            </div>

                                            <div class="product-widget">
                                                <div class="product-img">
                                                    <img src="./img/product02.png" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                    <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
                                                </div>
                                                <button class="delete"><i class="fa fa-close"></i></button>
                                            </div>
                                        </div>
                                        <div class="cart-summary">
                                            <small>3 Item(s) selected</small>
                                            <h5>SUBTOTAL: $2940.00</h5>
                                        </div>
                                        <div class="cart-btns">
                                            <a href="#">View Cart</a>
                                            <a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Cart -->

                                <!-- Menu Toogle -->
                                <div class="menu-toggle">
                                    <a href="#">
                                        <i class="fa fa-bars"></i>
                                        <span>Menu</span>
                                    </a>
                                </div>
                                <!-- /Menu Toogle -->
                            </div>
                        </div>
                        <!-- /ACCOUNT -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Hot Deals</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Laptops</a></li>
                        <li><a href="#">Smartphones</a></li>
                        <li><a href="#">Cameras</a></li>
                        <li><a href="#">Accessories</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="breadcrumb-header">Regular Page</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="#">Home</a></li>
                            <li class="active">Blank</li>
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
                    <div class="cart_section">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-10 offset-lg-1">
                                    <div class="cart_container">
                                        <div class="cart_title">Shopping Cart<small> (1 item in your cart) </small></div>
                                        <div class="cart_items">
                                            <ul class="cart_list">
                                                <li class="cart_item clearfix">
                                                    <div class="cart_item_image"><img src="https://i.imgur.com/qqBRWD5.jpg" alt=""></div>
                                                    <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                                        <div class="cart_item_name cart_info_col">
                                                            <div class="cart_item_title">Name</div>
                                                            <div class="cart_item_text">Samsung C7 Pro</div>
                                                        </div>
                                                        <div class="cart_item_color cart_info_col">
                                                            <div class="cart_item_title">Color</div>
                                                            <div class="cart_item_text"><span style="background-color:#999999;"></span>Silver</div>
                                                        </div>
                                                        <div class="cart_item_quantity cart_info_col">
                                                            <div class="cart_item_title">Quantity</div>
                                                            <div class="cart_item_text">1</div>
                                                        </div>
                                                        <div class="cart_item_price cart_info_col">
                                                            <div class="cart_item_title">Price</div>
                                                            <div class="cart_item_text">₹22000</div>
                                                        </div>
                                                        <div class="cart_item_total cart_info_col">
                                                            <div class="cart_item_title">Total</div>
                                                            <div class="cart_item_text">₹22000</div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="order_total">
                                            <div class="order_total_content text-md-right">
                                                <div class="order_total_title">Order Total:</div>
                                                <div class="order_total_amount">₹22000</div>
                                            </div>
                                        </div>
                                        <div class="cart_buttons"> <button type="button" class="button cart_button_clear">Continue Shopping</button> <button type="button" class="button cart_button_checkout">Add to Cart</button> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
        <footer id="footer">
            <!-- top footer -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">About Us</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
                                <ul class="footer-links">
                                    <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
                                    <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Categories</h3>
                                <ul class="footer-links">
                                    <li><a href="#">Hot deals</a></li>
                                    <li><a href="#">Laptops</a></li>
                                    <li><a href="#">Smartphones</a></li>
                                    <li><a href="#">Cameras</a></li>
                                    <li><a href="#">Accessories</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="clearfix visible-xs"></div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Information</h3>
                                <ul class="footer-links">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Orders and Returns</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Service</h3>
                                <ul class="footer-links">
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">View Cart</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                    <li><a href="#">Track My Order</a></li>
                                    <li><a href="#">Help</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
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
