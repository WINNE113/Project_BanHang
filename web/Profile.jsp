<%-- 
    Document   : Profile
    Created on : Mar 17, 2022, 11:23:53 AM
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

        <title>Ara Electro</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="css/tai-khoan.css">
        <script type="text/javascript" src="js/profile.js"></script>
        <link rel="stylesheet" href="fontawesome_free_5.13.0/css/all.css">
        <link rel="stylesheet" type="text/css" href="slick/slick.css" />
        <script type="text/javascript" src="slick/slick.min.js"></script>
        <script type="text/javascript"
        src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
        <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
        <!--Google font--> 
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!--Bootstrap--> 
        <!--<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>-->

        <!--Slick--> 
        <!--<link type="text/css" rel="stylesheet" href="css/slick.css"/>-->
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!--nouislider--> 
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!--Font Awesome Icon--> 
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!--Custom stlylesheet--> 
        <link type="text/css" rel="stylesheet" href="css/style.css"/>



    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- nội dung của trang -->
            <section class="account-page my-3">
                <div class="container">
                    <div class="page-content bg-white">
                        <div class="account-page-tab-content m-4">
                            <!-- 2 tab: thông tin tài khoản, danh sách đơn hàng  -->
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-taikhoan-tab" data-toggle="tab" href="#nav-taikhoan" role="tab" aria-controls="nav-home" aria-selected="true">Thông tin tài khoản</a>
                                    <a class="nav-item nav-link" id="nav-donhang-tab" data-toggle="tab" href="#nav-donhang" role="tab" aria-controls="nav-profile" aria-selected="false">Danh sách đơn hàng</a>
                                </div>
                            </nav>

                            <!-- nội dung 2 tab -->
                            <div class="tab-content">

                                <!-- nội dung tab 1: thông tin tài khoản  -->
                                <div class="tab-pane fade show active pl-4 " id="nav-taikhoan" role="tabpanel" aria-labelledby="nav-taikhoan-tab">
                                    <div class="offset-md-4 mt-3">
                                        <h3 class="account-header">Thông tin tài khoản</h3>
                                    </div>
                                    <div class="hoten my-3">
                                        <div class="row">
                                            <label class="col-md-2 offset-md-2" for="account-hoten">User</label>
                                            <input class="col-md-4" type="text" value="${sessionScope.account.user}" name="account-user" readonly>
                                    </div>
                                </div>
                                <div class="hoten my-3">
                                    <div class="row">
                                        <label class="col-md-2 offset-md-2" for="account-hoten">Full Name</label>
                                        <input class="col-md-4" type="text" value="${sessionScope.account.fullName}" name="account-hoten" readonly>
                                    </div>
                                </div>

                                <div class="email my-3">
                                    <div class="row">
                                        <label class="col-md-2 offset-md-2" for="account-email">Email</label>
                                        <input class="col-md-4" type="text" value="${sessionScope.account.email}" name="account-email" disabled="disabled" readonly>
                                    </div>
                                </div>
                                <div class="hoten my-3">
                                    <div class="row">
                                        <label class="col-md-2 offset-md-2" for="account-hoten">Phone Number</label>
                                        <input class="col-md-4" type="text" value="${sessionScope.account.phone_number}"  name="account-phone" readonly>
                                    </div>
                                </div>
                                <div class="hoten my-3">
                                    <div class="row">
                                        <label class="col-md-2 offset-md-2" for="account-hoten">Address</label>
                                        <input class="col-md-4" type="text" value="${sessionScope.account.addr}" name="account-address" readonly>
                                    </div>
                                </div>



                                <div class="checkbox-change-pass my-3">
                                    <div class="row">
                                        <input type="checkbox" name="changepass" id="changepass" class="offset-md-4" style="margin-top: 6px;margin-right: 5px; ">
                                        <label for="changepass">Chang Password</label> <br/>
                                        <p class="text-danger">${mess}</p>
                                    </div>
                                </div>
                                <form action="changepass" method="post">
                                    <div class="thay-doi-mk">
                                          <div class="mkcu my-3">
                                            <div class="row">
                                                <label class="col-md-2 offset-md-2" for="account-mkcu">New User</label>
                                                <input class="col-md-4" type="text" name="account-user">
                                            </div>
                                        </div>
                                        <div class="mkcu my-3">
                                            <div class="row">
                                                <label class="col-md-2 offset-md-2" for="account-mkcu">Old Password</label>
                                                <input class="col-md-4" type="password" name="account-mkcu">
                                            </div>
                                        </div>
                                        <div class="mkmoi my-3">
                                            <div class="row">
                                                <label class="col-md-2 offset-md-2" for="account-mkmoi">New Password</label>
                                                <input class="col-md-4" type="password" name="account-mkmoi">
                                            </div>
                                        </div>
                                        <div class="xacnhan-mkmoi my-3">
                                            <div class="row">
                                                <label class="col-md-2 offset-md-2" for="account-xacnhan-mkmoi">Confirm password</label>
                                                <input class="col-md-4" type="password" name="account-xacnhan-mkmoi">
                                            </div>
                                        </div>
                                        <div class="capnhat my-3">
                                            <div class="row">
                                                <button type="submit" class="button-capnhat text-uppercase offset-md-4 btn btn-warning mb-4">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <!-- nội dung tab 2: danh sách đơn hàng -->
                            <div class="tab-pane fade py-3" id="nav-donhang" role="tabpanel" aria-labelledby="nav-donhang-tab">
                                <div class="donhang-table">
                                    <table class="m-auto">
                                        <tr>
                                            <th>Mã đơn hàng</th>
                                            <th>Ngày mua</th>
                                            <th>Sản phẩm</th>
                                            <th>Tổng tiền</th>
                                            <th>Trạng thái đơn hàng</th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--              thanh cac dich vu :mien phi giao hang, qua tang mien phi ........ 
            <section class="abovefooter text-white" style="background-color: #CF111A;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-books.png" alt="icon-books">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">HƠN 14.000 TỰA SÁCH HAY</h6>
                                    <p class="detail">Tuyển chọn bởi DealBooks</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-ship.png" alt="icon-ship">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">MIỄN PHÍ GIAO HÀNG</h6>
                                    <p class="detail">Từ 150.000đ ở TP.HCM</p>
                                    <p class="detail">Từ 300.000đ ở tỉnh thành khác</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-gift.png" alt="icon-gift">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">QUÀ TẶNG MIỄN PHÍ</h6>
                                    <p class="detail">Tặng Bookmark</p>
                                    <p class="detail">Bao sách miễn phí</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-return.png" alt="icon-return">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">ĐỔI TRẢ NHANH CHÓNG</h6>
                                    <p class="detail">Hàng bị lỗi được đổi trả nhanh chóng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>-->

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
