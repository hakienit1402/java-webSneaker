<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
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
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold;" ></i><a href="index.jsp">Trang Chủ</a></li>
                <li><a href="#">Tài Khoản</a></li>
                <li><a href="quanlidonhang.html">Quản lí đơn hàng</a></li>
                <li class="active">Chi tiết đơn hàng</li>
            </ol>
        </div>

</div>
<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./MenuUser.jsp"/>
    <div class="oderdetails col-md-9">
        <%ResultSet rs1 = (ResultSet) request.getAttribute("rs1");
            while (rs1.next()){
        %>
        <div class="status">
            <h4>Trạng thái đơn hàng</h4>
            <span class="sta1" > Đặt hàng thành công</span>
            <span class="sta2">Đang đóng gói</span>
            <span class="sta3"> Đang giao</span>
            <span class="sta4"> Đã giao</span>
            <div class="statusBar">
                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" <%if (rs1.getString(5).equals("Đang đóng gói")){%>style="width: 40%"<%}else if (rs1.getString(5).equals("Đang giao")){%>style="width: 75%"<%}else {%>style="width:100%"<%};%>></div>
                </div>
            </div>


        </div>
        <hr class="light">
        <div class="updateh">
            <div class=" cart-items heading">
            <h4>Chi tiết đặt hàng.</h4>
            <h5>Thông tin người nhận : </h5>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">Tên</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Ngày mua</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><%=rs1.getString(1)%></td>
                    <td><%=rs1.getString(2)%></td>
                    <td><%=rs1.getString(3)%></td>
                    <td><%=rs1.getString(4)%></td>
                </tr>
                <%};%>
<%--                <tr>--%>
<%--                    <th scope="row">2</th>--%>
<%--                    <td>01/10/2019</td>--%>
<%--                    <td>Đóng gói</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <th scope="row">3</th>--%>
<%--                    <td>02/10/2019</td>--%>
<%--                    <td>Đang vận chuyển</td>--%>
<%--                </tr>--%>
                </tbody>
            </table>
            </div>
        </div>
        <div class="duct">
            <div class=" cart-items heading">
                <h4>Kiện hàng gồm có</h4>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Tên sản phẩm </th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Giá</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% ResultSet rs = (ResultSet) request.getAttribute("rs");
                        while (rs.next()){
                    %>
                    <tr>
                        <td><img src="<%=rs.getString(3)%>" height=50px width=50px></td>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=((rs.getInt(2))*(rs.getDouble(4)))%></td>

                    </tr>
                    <%};%>
                    </tbody>
                </table>


            </div>

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