<%-- 
    Document   : Cart
    Created on : Mar 23, 2022, 8:47:40 PM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <!--Car-->
        <!--<link rel="stylesheet" href="Car_css/all.min.css">-->
        <!--Car-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <section class="pt-5 pb-5">
            <div class="container">
                <div class="row w-100">
                    <div class="col-lg-12 col-md-12 col-12">
                        <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
                        <p class="mb-5 text-center">
                            <i class="text-info font-weight-bold">3</i> items in your cart</p>
                        <table id="shoppingCart" class="table table-condensed table-responsive">
                            <thead>
                                <tr>
                                    <th style="width:60%">Product</th>
                                    <th style="width:12%">Price</th>
                                    <th style="width:10%">Quantity</th>
                                    <th style="width:16%"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-md-3 text-left">
                                                <img src="https://cdn.tgdd.vn/Products/Images/44/263980/Slider/vi-vn-acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-1.jpg" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                            </div>
                                            <div class="col-md-9 text-left mt-sm-2">
                                                <h4>Product Name</h4>
                                                <p class="font-weight-light">Brand &amp; Name</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td data-th="Price">$49.00</td>
                                    <td data-th="Quantity">
                                        <input type="number" class="form-control form-control-lg text-center" value="1">
                                    </td>
                                    <td class="actions" data-th="">
                                        <div class="text-right">
                                            <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-md-3 text-left">
                                                <img src="https://cdn.tgdd.vn/Products/Images/4728/267681/camera-ip-ngoai-troi-2mp-imou-bullet-2e-d-trang-thumb-600x600.jpg" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                            </div>
                                            <div class="col-md-9 text-left mt-sm-2">
                                                <h4>Product Name</h4>
                                                <p class="font-weight-light">Brand &amp; Name</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td data-th="Price">$49.00</td>
                                    <td data-th="Quantity">
                                        <input type="number" class="form-control form-control-lg text-center" value="1">
                                    </td>
                                    <td class="actions" data-th="">
                                        <div class="text-right">
                                            <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="float-right text-right">
                            <h4>Subtotal:</h4>
                            <h1>$99.00</h1>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 d-flex align-items-center">
                    <div class="col-sm-6 order-md-2 text-right">
                        <a href="catalog.html" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
                    </div>
                    <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
                        <a href="catalog.html">
                            <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
