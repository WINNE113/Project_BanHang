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
            <!-- n???i dung c???a trang -->
            <section class="account-page my-3">
                <div class="container">
                    <div class="page-content bg-white">
                        <div class="account-page-tab-content m-4">
                            <!-- 2 tab: th??ng tin t??i kho???n, danh s??ch ????n h??ng  -->
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-taikhoan-tab" data-toggle="tab" href="#nav-taikhoan" role="tab" aria-controls="nav-home" aria-selected="true">Th??ng tin t??i kho???n</a>
                                    <a class="nav-item nav-link" id="nav-donhang-tab" data-toggle="tab" href="#nav-donhang" role="tab" aria-controls="nav-profile" aria-selected="false">Danh s??ch ????n h??ng</a>
                                </div>
                            </nav>

                            <!-- n???i dung 2 tab -->
                            <div class="tab-content">

                                <!-- n???i dung tab 1: th??ng tin t??i kho???n  -->
                                <div class="tab-pane fade show active pl-4 " id="nav-taikhoan" role="tabpanel" aria-labelledby="nav-taikhoan-tab">
                                    <div class="offset-md-4 mt-3">
                                        <h3 class="account-header">Th??ng tin t??i kho???n</h3>
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

                            <!-- n???i dung tab 2: danh s??ch ????n h??ng -->
                            <div class="tab-pane fade py-3" id="nav-donhang" role="tabpanel" aria-labelledby="nav-donhang-tab">
                                <div class="donhang-table">
                                    <table class="m-auto">
                                        <tr>
                                            <th>M?? ????n h??ng</th>
                                            <th>Ng??y mua</th>
                                            <th>S???n ph???m</th>
                                            <th>T???ng ti???n</th>
                                            <th>Tr???ng th??i ????n h??ng</th>
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
                                    <h6 class="tieude font-weight-bold">H??N 14.000 T???A S??CH HAY</h6>
                                    <p class="detail">Tuy???n ch???n b???i DealBooks</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-ship.png" alt="icon-ship">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">MI???N PH?? GIAO H??NG</h6>
                                    <p class="detail">T??? 150.000?? ??? TP.HCM</p>
                                    <p class="detail">T??? 300.000?? ??? t???nh th??nh kh??c</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-gift.png" alt="icon-gift">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">QU?? T???NG MI???N PH??</h6>
                                    <p class="detail">T???ng Bookmark</p>
                                    <p class="detail">Bao s??ch mi???n ph??</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="dichvu d-flex align-items-center">
                                <img src="images/icon-return.png" alt="icon-return">
                                <div class="noidung">
                                    <h6 class="tieude font-weight-bold">?????I TR??? NHANH CH??NG</h6>
                                    <p class="detail">H??ng b??? l???i ???????c ?????i tr??? nhanh ch??ng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>-->

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
