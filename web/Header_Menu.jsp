<%-- 
    Document   : Header_Menu
    Created on : Mar 8, 2022, 3:56:47 PM
    Author     : ASUS-PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="load">Home</a></li>
                <!--                            <li><a href="#">Hot Deals</a></li>-->
                <li><a href="loadallcategories">Categories</a></li>
                <c:forEach items="${listC}" var="o">
                    <li ${tag == o.cid ? "class = active":""} ><a href="loadproductbycate?cid=${o.cid}">${o.cname}</a></li>
                    </c:forEach>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>