<%@ page import="vn.edu.nlu.fit.model.Cart" %>
<%@ page import="vn.edu.nlu.fit.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Giỏ Hàng</title>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: blue; font-size: 15px"></i><a href="index.jsp">Trang Chủ</a></li>
                <li><a href="#">Tài Khoản</a></li>
                <li class="active">Giỏ Hàng</li>
            </ol>
        </div>
    </div>
</div>
<div class="ckeckout" style="padding: 0px;padding-top: 3px">
    <div class="container-fluid">
        <div class="row text-left" style="padding-left: 10px;">
        <div class="ckeckout-top col-md-3" style="background: #f8f8f8">
            <div class="navbar-default sidebar" style="position: unset" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="#" ></i> Tài khoản </a>
                        </li>
                        <li>
                            <a href="#"></i> Quản lí tài khoản</a>

                        </li>
                        <li>
                            <a href="#">  Quản lí đơn hàng</a>

                        </li>
                        <li>
                            <a href="#"> Thông báo </a>
                        </li>


                        <li>
                            <a href="#"> Giỏ hàng <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Giỏ hàng  </a>
                                </li>
                                <li>
                                    <a href="#">Thanh toán</a>
                                </li>
                            </ul>

                        </li>
                        <li>
                            <a href="#">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="ckeckout-top col-md-9">
            <div class=" cart-items heading">
                <h3>Sản phẩm đã chọn</h3>


                <div class="in-check" >
                    <% Cart c =(Cart) request.getAttribute("Cart");
                    if(c==null) c=new Cart();
                        for (Product p:c.list()) {
                    %>
                    <ul class="cart-header">
                        <li class="ring-in"><a href="single.html" ><img src="<%=p.getImg()%>" height="100px" width="100px" class="img-responsive" alt=""></a>
                        </li>
                        <li><span><%=p.getName()%></span></li>
                        <li><input style="margin-top: 33px;margin-left: 80px;width: 35px" type="number" value="<%=p.getSoluong()%>"></li>
                        <li><span><%=p.total()%>VNĐ</span></li>
                        <a href="http://localhost:8080/Demo/Delete?id=<%=+p.getId()%>"><div class="close1"></div></a>
                        <div class="clearfix"></div>
                    </ul>
                    <%};%>
                </div>
            </div>
            <span>Tổng tiền:<%=c.tongtien()%>VNĐ</span>
            <button class="btn btn-info" href="#" style="margin-left: 400px">Thanh toán</button>
        </div>
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