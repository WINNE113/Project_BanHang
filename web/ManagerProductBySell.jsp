<%-- 
    Document   : ManagerProductBySell
    Created on : Mar 22, 2022, 11:00:46 AM
    Author     : ASUS-PRO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Product Techno</title>
        <!--header-->
        <!--Google font--> 
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!--Bootstrap--> 
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!--Slick--> 
        <!--<link type="text/css" rel="stylesheet" href="css/slick.css"/>-->
        <!--<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>-->

        <!--nouislider--> 
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!--Font Awesome Icon--> 
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!--Custom stlylesheet--> 
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <!--/header-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager_product.css" rel="stylesheet" type="text/css"/>
        <!--<script src="js/manager_product.js" type="text/javascript"></script>-->
        <script type="text/javascript">
            $(document).ready(function ()
            {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function ()
                {
                    if (this.checked) {
                        checkbox.each(function ()
                        {
                            this.checked = true;
                        });
                    } else
                    {
                        checkbox.each(function ()
                        {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function ()
                {
                    if (!this.checked)
                    {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                                <!--<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->      
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>

                            <tr>
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th>ID</th>
                                <th>Title</th>

                                <th>Price</th>
                                <th>Brand</th>
                                <th>Created</th>                              
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listProduct}" var="x">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${x.id}</td>
                                <td>${x.title}</td>
                                <td>${x.price} VND</td>
                                <td>
                                    <c:if test="${x.brandId == 1}">
                                        Apple
                                    </c:if>
                                    <c:if test="${x.brandId == 2}">
                                        SamSung
                                    </c:if>
                                    <c:if test="${x.brandId == 3}">
                                        Oppo
                                    </c:if>
                                    <c:if test="${x.brandId == 4}">
                                        Xiaomi
                                    </c:if>
                                    <c:if test="${x.brandId == 5}">
                                        Realme
                                    </c:if>
                                    <c:if test="${x.brandId == 6}">
                                        MacBook
                                    </c:if>
                                    <c:if test="${x.brandId == 7}">
                                        Asus
                                    </c:if>
                                    <c:if test="${x.brandId == 8}">
                                        Acer
                                    </c:if>
                                    <c:if test="${x.brandId == 9}">
                                        Dell
                                    </c:if>
                                    <c:if test="${x.brandId == 10}">
                                        LG
                                    </c:if>
                                    <c:if test="${x.brandId == 11}">
                                        HP
                                    </c:if>
                                    <c:if test="${x.brandId == 13}">
                                        Huawei
                                    </c:if>
                                    <c:if test="${x.brandId == 14}">
                                        Watch
                                    </c:if>
                                    <c:if test="${x.brandId == 15}">
                                        Imou
                                    </c:if>
                                    <c:if test="${x.brandId == 16}">
                                        Lenovo
                                    </c:if>
                                </td>
                                <td>
                                    ${x.date}
                                </td>
                                <td>
                                    <a href="editproductbyseller?pid=${x.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleleproduct?pid=${x.id}" class="delete" data-toggle="modal" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                    
                                </td>
                            </tr>
                           
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>100</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Add Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addproduct" method="post">
                        <div class="modal-header">      
                            <h4 class="modal-title">Add Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">                         
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Thumbnail</label>
                                <input name="thumnail" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Discount</label>
                                <textarea name="discount" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Detail Description</label>
                                <textarea name="detail_desc" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Brand</label>
                                <select name="brand" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listB}" var="o">
                                        <option value="${o.id}">${o.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">      
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">     
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>     
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
         <!--Delete Modal HTML--> 
                <div id="deleteEmployeeModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="delete?pid=${x.id}" method="post">
                                <div class="modal-header">      
                                    <h4 class="modal-title">Delete Employee</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">     
                                    <p>Are you sure you want to delete these Records?</p>
                                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-danger" value="Delete">
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
    </body>
</html>      