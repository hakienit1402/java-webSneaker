<%@ page import="vn.edu.nlu.fit.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tài Khoản Người Dùng</title>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="lib/fontawesome-free-5.11.2-web/css/all.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/style.css">
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/lib/fontawesome-free-5.11.2-web/css/all.css">

</head>
<body>

<jsp:include page="./header.jsp"/>
<div class="breadcrumbs">

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold ;"></i><a href="index.jsp">Trang Chủ</a></li>
                <li class="active">Quản lí tài khoản</li>
            </ol>
        </div>

</div>
<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./MenuUser.jsp"/>
        <div class=" card-body ">
            <%
                if (session.getAttribute("Auth")!=null){
                    User u = (User) session.getAttribute("Auth");
            %>
            <div class=" row ">
                <div class=" col-md-12 ">
                    <h4>Thông tin của bạn</h4>
                    <hr>
                </div>
            </div>
            <div class=" row ">
<!--                        <div class=" col-sm-3 ">-->
<!--                            <img src=" http://placehold.it/150x150 " alt=" " class=" rounded-circle ">-->
<!--                            <div class=" ml-4 mt-2 ">Name Account</div>-->
<!--                        </div>-->
                        <div class=" col-sm-9 mt-2 row" style="margin: auto;background: #f1f1f1;border-radius: 45px;padding-top: 10px">
                            <div class=" col-md-4 ">
                                <ul class=" list-group " style="background: #f1f1f1">

                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">ID:</li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">Họ và Tên:</li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">Ngày Sinh:</li>
<%--                                    <li class=" list-group-item border-0 ">Số Điện Thoại:</li>--%>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">Email:</li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">Địa chỉ:</li>
<%--                                    <li class=" list-group-item border-0 ">Giới tính:</li>--%>
<%--                                    <li class=" list-group-item border-0 ">Ngày tạo:</li>--%>
                                </ul>
                            </div>
                            <div class=" col-md-7 ">
                                <ul class=" list-group ">

                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">
                                        <%=u.getId()%>
                                    </li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">
                                        <%=u.getName()%>
                                    </li>
<%--                                    <li class=" list-group-item border-0 ">--%>
<%--                                        20/5/1999--%>
<%--                                    </li>--%>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">
                                        <%=u.getSdt()%>
                                    </li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">
                                        <%=u.getEmail()%>
                                    </li>
                                    <li class=" list-group-item border-0 "style="background: #f1f1f1">
                                       <%=u.getDiachi()%>
                                    </li>
<%--                                    <li class=" list-group-item border-0 ">--%>
<%--                                        Male--%>
<%--                                    </li>--%>
<%--                                    <li class=" list-group-item border-0 ">--%>
<%--                                        10/11/2019--%>
<%--                                    </li>--%>
                                </ul>
                            </div>
                        </div>
            </div>
            <%};%>
        </div>
    </div>
</div>
<footer>
    <div id="footer" class="container-fluid padding">
        <div class="row text-left">
            <div class="col-md-4">
                <hr class="light" style=" border: 1px solid black">
                <h4>Liên hệ</h4>
                <p>ngocchoan241099@gmail.com</p>
                <p>0359649727</p>

            </div>
            <div class="col-md-4">
                <hr class="light" style=" border: 1px solid black">
                <h4>Giới thiệu</h4>
                <p>Giới thiệu sản phẩm</p>
                <p>Giới thiệu cửa hàng</p>


            </div>
            <div class="col-md-4">
                <hr class="light" style=" border: 1px solid black">

                <h4>Chính Sách</h4>
                <p>Chính sách bảo mật</p>
                <p>Chính sách đổi trả hàng</p>
                <p>Chính sách bảo mật thông tin cá nhân</p>

            </div>


        </div>
        <div class="row text-left">

            <div class="col-md-4">
                <hr class="light" style=" border: 1px solid black">
                <h4>Địa chỉ</h4>
                <p>Phường Linh Trung, Quận Thủ Đức, TP.HCM</p>
            </div>
            <div class="col-md-4" >
                <hr class="light" style=" border: 1px solid black">
                <h4>Thanh toán</h4>
                <img src="images/visa%20(2).png" class="img-fluid" style="margin-right: 30px">
                <img src="images/paypal.png" class="img-fluid">
            </div>
            <div class="col-md-4">
                <hr class="light" style=" border: 1px solid black">
                <h4>Liên kết</h4>
                <a href="#"> <i class="fab fa-facebook" style="font-size: 50px; color: blue"></i></a>
                <a href="#"><i class="fab fa-twitter" style="font-size: 50px; color:  #2a1758"></i></a>
                <a href="#"> <i class="fab fa-google-plus" style="font-size: 50px; color: red"></i></a>

            </div>

        </div>
    </div>
</footer>
</body>
</html>