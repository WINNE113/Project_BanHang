<%-- 
    Document   : Blank
    Created on : Mar 7, 2022, 12:46:51 PM
    Author     : ASUS-PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <%--<jsp:include page="Header_Menu.jsp"></jsp:include>--%>
        <!-- /NAVIGATION -->

        <!-- BREADCRUMB -->

        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="editproductbyseller" method="post">
                                <div class="modal-header">      
                                    <h4 class="modal-title">Edit Product</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>                              
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>ID</label>
                                        <input value="${product.id}" name="productid" type="text" class="form-control" required readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input value="${product.title}" name="title" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Thumbnail</label>
                                        <input value="${product.thumbnail}" name="thumbnail" type="text" class="form-control" required>
                                    </div>

                                    <div class="form-group">
                                        <label>Price</label>
                                        <input value="${product.price}" name="price" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Discount</label>
                                        <input value="${product.discount}" name="discount" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea name="desc" type="text" class="form-control" required>${product.desc}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Detail Description</label>
                                        <textarea name="desc" type="text" class="form-control" required>${product.detail_desc}</textarea>
                                    </div>                                  
                                    <div class="form-group">
                                        <label>Category</label>
                                        <select name="category" class="form-select" aria-label="Default select example">   
                                            <c:forEach items="${listC}" var="o">                                          
                                                <option ${o.cid == product.categorieId ? "selected":""} value="${o.cid}">${o.cname}</option>
                                            </c:forEach>                                        
                                        </select>
                                    </div> 
                                    <div class="form-group">
                                        <label>Brand</label>
                                        <select name="brand" class="form-select" aria-label="Default select example">                                         
                                            <c:forEach items="${listB}" var="o">                                          
                                                <option ${o.id == product.brandId ? "selected":""} value="${o.id}">${o.name}</option>
                                            </c:forEach>    
                                        </select>
                                    </div> 
                                </div>
                                <div class="modal-footer">
                                    <a href="#" onclick="cancelEditProduct()" class="btn btn-default" data-dismiss="modal" ><i class="material-icons" title="Delete">Cancel</i></a>
                                    <input type="submit" class="btn btn-info" value="Save">
                                </div>
                            </form>
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

    <!-- /NEWSLETTER -->

    <!-- FOOTER -->
    <jsp:include page="Footer.jsp"></jsp:include>
    <!-- /FOOTER -->

    <!-- jQuery Plugins -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
