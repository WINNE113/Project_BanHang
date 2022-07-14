<%-- 
    Document   : Cart
    Created on : Mar 23, 2022, 8:47:40 PM
    Author     : ASUS-PRO
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="Entity.ProductCart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="Header.jsp"></jsp:include>>>
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
                                <c:if test="${cart != null}">
                                    <%  HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
                                        for (Map.Entry<Integer, ProductCart> en : cart.entrySet()) {
                                            Integer key = en.getKey();
                                            ProductCart productCart = en.getValue();
                                    %>   
                                    <tr>
                                        <td data-th="Product">
                                            <div class="row">
                                                <div class="col-md-3 text-left">
                                                    <img src="<%= productCart.getProduct().getThumbnail()%>" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                                </div>
                                                <div class="col-md-9 text-left mt-sm-2">
                                                    <h4> <%= productCart.getProduct().getTitle()%> </h4>
                                                    <p class="font-weight-light">Brand &amp; Name</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td data-th="Price"><%= productCart.getProduct().getPrice()%></td>
                                <form action="updatequantity" method="POST">
                                    <td data-th="Quantity">
                                        <input name="quantity" type="number" class="form-control form-control-lg text-center" value="<%= productCart.getQuantity()%>">
                                        <input name="id" value="<%=productCart.getProduct().getId()%>" type="hidden">
                                        <button class="btn-success" type="submit">Update</button>
                                    </td>
                                </form>
                                <td class="actions" data-th="">
                                    <div class="text-right">
                                        <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>
                                </td>
                                </tr>
                                <%  }%>
                            </c:if>
                            <!--Nếu chưa có sản phẩm trong giỏ hàng thì in ra-->
                            <c:if test="${cart == null}"> 
                                <div class="alert alert-warning" role="alter">
                                    Chưa Có Sản Phẩm Trong Giỏ Hàng 
                                </div>
                            </c:if>

                            </tbody>                            
                        </table>

                        <div class="float-right text-right">
                            <h4>Subtotal:</h4>
                            <h1>${totalPrice}</h1>
                        </div>


                    </div>
                </div>
                <div class="row mt-4 d-flex align-items-center">
                    <div class="col-sm-6 order-md-2 text-right">
                        <a href="loadinftocheckout" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
                    </div>
                    <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
                        <a href="load">
                            <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
