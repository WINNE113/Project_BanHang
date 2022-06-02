<%-- 
    Document   : basic-table
    Created on : Mar 22, 2022, 4:44:37 PM
    Author     : ASUS-PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
        <meta name="description"
              content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
        <meta name="robots" content="noindex,nofollow">
        <title>Ara Techno</title>
        <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">
        <!-- Custom CSS -->
        <link href="admin_css/style.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--action account-->
        <link href="css/manager_product.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--/action account-->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

    <body>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
             data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->
            <jsp:include page="Admin_top_header.jsp"></jsp:include> 
                <!-- ============================================================== -->
                <!-- End Topbar header -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Left Sidebar - style you can find in sidebar.scss  -->
                <!-- ============================================================== -->
            <jsp:include page="Admin_left_sidebar.jsp"></jsp:include> 
                <!-- ============================================================== -->
                <!-- End Left Sidebar - style you can find in sidebar.scss  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Page wrapper  -->
                <!-- ============================================================== -->
                <div class="page-wrapper">
                    <!-- ============================================================== -->
                    <!-- Bread crumb and right sidebar toggle -->
                    <div class="page-breadcrumb bg-white">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                <h4 class="page-title">Table Product</h4>
                            </div>

                        </div>

                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Container fluid  -->
                    <!-- ============================================================== -->
                    <div class="container-fluid">
                        <!-- ============================================================== -->
                        <!-- Start Page Content -->
                        <!-- ============================================================== -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="white-box">
                                    <!--<h3 class="box-title">Account</h3>-->
                                    <!--<p class="text-muted">Add class <code>.table</code></p>-->                               
                                    <div class="table-responsive">
                                        <table class="table text-nowrap">
                                            <thead>
                                                <tr>
                                                    <th class="border-top-0">ID</th>
                                                    <th class="border-top-0">Title</th>                                           
                                                    <th class="border-top-0">Price</th>
                                                    <th class="border-top-0">Discount</th>
                                                    <th class="border-top-0">Created</th>
                                                    <th class="border-top-0">Category</th>
                                                    <th class="border-top-0">Sell ID</th>
                                                    <th class="border-top-0">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${listP}" var="x">
                                                <tr>
                                                    <td>${x.id}</td>
                                                    <td>${x.title}</td>
                                                    <td>${x.price}</td>
                                                    <td>
                                                        <c:if test="${x.discount >= 20}">
                                                            <span class="text-danger">${x.discount}%</span>
                                                        </c:if>
                                                        <c:if test="${x.discount >= 10 && x.discount < 20}">
                                                            <span class="text-success">${x.discount}%</span>
                                                        </c:if>
                                                        <c:if test="${x.discount < 10}">
                                                            ${x.discount}
                                                        </c:if>
                                                    </td>
                                                    <td>${x.date}</td>
                                                    <td>
                                                        <c:if test="${x.categorieId == 1}">
                                                            SmartPhones
                                                        </c:if>
                                                        <c:if test="${x.categorieId == 2}">
                                                            Laptops
                                                        </c:if>
                                                        <c:if test="${x.categorieId == 3}">
                                                            Cameras
                                                        </c:if>
                                                        <c:if test="${x.categorieId == 4}">
                                                            Accessoris
                                                        </c:if>
                                                        <c:if test="${x.categorieId == 5}">
                                                            Apple Watch
                                                        </c:if>
                                                        <c:if test="${x.categorieId == 6}">
                                                            Ipad
                                                        </c:if>
                                                    </td>
                                                        
                                                    <td>${x.sell_id}</td>

                                                    <%--<c:if test="${x.role_id == 3}"> Client </c:if>--%>

                                                    <td>

                                                        <a href="#" onclick="deleteProduct(${x.id})" class="delete" data-toggle="modal" ><i class="material-icons" title="Delete">&#xE872;</i></a>

                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End PAge Content -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Right sidebar -->
                    <!-- ============================================================== -->
                    <!-- .right-sidebar -->
                    <!-- ============================================================== -->
                    <!-- End Right sidebar -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- End Container fluid  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer text-center"> 2021 © Ample Admin brought to you by <a
                        href="https://www.wrappixel.com/">wrappixel.com</a>
                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/app-style-switcher.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="js/sidebarmenu.js"></script>
        <!--Custom JavaScript -->
        <script src="js/custom.js"></script>
    </body>

</html>