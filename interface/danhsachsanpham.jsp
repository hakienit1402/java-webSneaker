<%@ page import="java.sql.ResultSet" %>
<%@ page import="lab7.Util" %>
<%@ page import="vn.edu.nlu.fit.model.Cart" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh sách sản phẩm</title>
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
<!--    <hr class="light">-->

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold ;"></i><a href="index.jsp">Trang Chủ</a></li>
                <li class="active">Danh sách sản phẩm</li>
            </ol>
        </div>

<!--    <hr class="light">-->
</div>

<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./menu.jsp"/>
    <div class="shoes col-md-9">
        <div class="container">
            <div class="product-one">
<%--                <div class="text-left"  style="color: #702428"> <h3>Sale</h3></div>--%>
                <hr class="light">
                <%
                    ResultSet rs1 = (ResultSet) request.getAttribute("rs1");
                    while (rs1.next()){
                %>
                <div class="col-md-4 product-left" style="height: 404.203px">
                    <div class="p-one simpleCart_shelfItem" style="margin-bottom: 30px">
                        <a href="http://localhost:8080/Demo/ChiTiet?id=<%=rs1.getInt(1)%>">
                            <img src="<%= rs1.getString(4) %>" alt="" />
                            <div class="mask">
                                <span>Vào xem</span>
                            </div>
                        </a>
                        <h4><%=rs1.getString(2) %></h4>
                        <p><a class="item_add" href="http://localhost:8080/Demo/AddCart?<%=request.getAttribute("phanloai")%>id=<%=rs1.getInt(1)%>&<%=request.getAttribute("trang")%>"><i></i> <span class=" item_price"><%=rs1.getDouble(3) %></span></a></p>

                    </div>
                </div>
                <% }; %>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4" style="margin: auto">
                <ul class="pagination pagination-lg">
                    <li class="page-item"><a class="page-link" href="http://localhost:8080/Demo/ListProduct?<%=request.getAttribute("phanloai")%>page=1">Previous</a></li>
                    <%
                    int pg = request.getAttribute("sum")==null?1: (int) request.getAttribute("sum");
                    for (int i =0 ; i<pg;i++){
                    %>
                    <li class="page-item <%=(i+1+"").equals(request.getParameter("page"))?"active":""   %>"><a class="page-link" href="http://localhost:8080/Demo/ListProduct?<%=request.getAttribute("phanloai")%>page=<%=(i+1)%>" > <%=(i+1)%> </a></li>
                    <%};%>
                    <li class="page-item"><a class="page-link" href="http://localhost:8080/Demo/ListProduct?<%=request.getAttribute("phanloai")%>page=<%=pg+1%>">Next</a></li>
                </ul>
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
                <img src="Nhom25_WebBanGiayNam/interface/images/visa%20(2).png" class="img-fluid" style="margin-right: 30px">
                <img src="Nhom25_WebBanGiayNam/interface/images/paypal.png" class="img-fluid">
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
<script>
    function hienthi() {
        document.getElementById('active').style.display='block';
    }
</script>
</html>