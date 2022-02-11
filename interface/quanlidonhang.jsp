<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lí đơn hàng</title>
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

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold ;"></i><a href="index.jsp">Trang Chủ</a></li>
                <li><a href="#">Tài Khoản</a></li>
                <li class="active">Quản lí đơn hàng</li>
            </ol>
        </div>

</div>
<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./MenuUser.jsp"/>
    <div class="oderdetails col-md-9">
<!--        <div class="oder">-->
<!--           <h4>Đơn hàng</h4>-->
<!--            <p><span>Ngày mua: </span><span>1/10/2019</span></p>-->
<!--            <p><span>Ngày giao: </span> <span>3/10/2019</span></p>-->
<!--            <p>Trạng thái: <span>Đang vận chuyển</span></p>-->
<!--            <a href="chitietdonhang.html">Xem chi tiết</a>-->
<!--            </div>-->
        <hr class="light">
<!--        <div class="duct">-->
<!--            <div class=" cart-items heading">-->
<!--                <h4>Kiện hàng gồm có</h4>-->
<!--                <div class="in-check" >-->
<!--                    <ul class="cart-header">-->
<!--                        <li class="ring-in"><a href="chitiet.jsp" ><img-->
<!--                                src="../Image/Nike/N_Nike Air Max Infuriate III Low Basketball Shoes_1.png" height="593"-->
<!--                                width="700"/></a>-->
<!--                        </li>-->

<!--                        <li><span>Woo Dress</span></li>-->
<!--                        <li><span>$ 290.00</span></li>-->
<!--                        <li><span>1</span></li>-->
<!--                        <div class="clearfix"> </div>-->
<!--                    </ul>-->
<!--                    <ul class=" cart-header1">-->
<!--                        <li class="ring-in"><a href="chitiet.jsp" ><img src="images/shoes-15.png" ></a>-->
<!--                        </li>-->
<!--                        <li><span>Elliot Shoes</span></li>-->
<!--                        <li><span>$ 300.00</span></li>-->
<!--                        <li><span>1</span></li>-->
<!--                        <div class="clearfix"> </div>-->
<!--                    </ul>-->
<!--                    <ul class="cart-header2">-->
<!--                        <li class="ring-in"><a href="chitiet.jsp" ><img src="images/shoes-16.png"></a>-->
<!--                        </li>-->
<!--                        <li><span>Woo Dress</span></li>-->
<!--                        <li><span>$ 360.00</span></li>-->
<!--                        <li><span> 1 </span></li>-->
<!--                        <div class="clearfix"> </div>-->
<!--                    </ul>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
        <div class="updateh">
            <h2>Đơn hàng của tôi</h2>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">Mã đơn hàng</th>
                    <th scope="col">Ngày mua</th>
<%--                    <th scope="col">Sản phẩm</th>--%>
                    <th scope="col">Tổng tiền</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Tác vụ</th>
                </tr>
                </thead>
                <tbody>
                <% ResultSet rs = (ResultSet) request.getAttribute("rs");
                while (rs.next()){
                %>
                <tr>
                    <th><%=rs.getString(1)%></th>
                    <th scope="row"><%=rs.getString(2)%></th>
<%--                    <td><%=rs.getString(3)%></td>--%>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><a href="http://localhost:8080/Demo/ChiTietDonHang?id=<%=rs.getString(1)%>">Xem chi tiết</a></td>
                </tr>
                <%};%>
<%--                <tr>--%>
<%--                    <th scope="row">01/10/2019</th>--%>
<%--                    <td>Elliot Shoes</td>--%>
<%--                    <td>$ 300.00</td>--%>
<%--                    <td>Đặt hàng thành công</td>--%>
<%--                </tr>--%>
                </tbody>
            </table>

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