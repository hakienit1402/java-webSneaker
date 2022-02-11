
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/style.css">
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/lib/fontawesome-free-5.11.2-web/css/all.css">


</head>
<body>
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v5.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="111443080380433"
     theme_color="#0084ff"
     logged_in_greeting="Chào bạn, bạn đang có nhu cầu mua giày ?"
     logged_out_greeting="Chào bạn, bạn đang có nhu cầu mua giày ?">
</div>

<jsp:include page="./header.jsp"/>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="Nhom25_WebBanGiayNam/interface/images/banner.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Nhom25_WebBanGiayNam/interface/images/banner-2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Nhom25_WebBanGiayNam/interface/images/banner-3.jpg" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="breadcrumbs">

    <div class="breadcrumbs-main">
        <ol class="breadcrumb">
            <li><i class="fa fa-home" style="color: #FFF; font-size: 25px; font-weight: bold"></i>
                <a style="color: #FFF; font-size:20px; font-weight: bold ">Trang Chủ</a></li>
        </ol>
    </div>
<%--    quảng cáo--%>
    <div class="hop-thoai">
        <img src="Nhom25_WebBanGiayNam/interface/images/imgqc.png" alt="">
        <button class="close">&times;</button>
    </div>
<%--    kết qc--%>
</div>
<div class="container-fluid">

    <div class="row text-left" style="padding-left: 0px;box-shadow: #ff6c05">
        <jsp:include page="./menu.jsp"/>
    <div class="shoes col-md-9">
        <div class="container">
            <div class="product-one">
                <div class="text-left "  style="color: #702428; background: #fff;">
                    <img src="Nhom25_WebBanGiayNam/interface/images/top sp.png" class="img-fluid" style="height:50px;" alt="" />
                </div>
                <hr class="light">
                <% ResultSet rs3 = (ResultSet) request.getAttribute("rs3");
                while (rs3.next()){
                %>
                <div class="col-md-3 product-left">
                    <div class="p-one simpleCart_shelfItem">
                        <a href="http://localhost:8080/Demo/ChiTiet?id=<%=rs3.getInt(1)%>">
                            <img src="<%=rs3.getString(4)%>" alt="" />
                            <div class="mask">
                                <span>Vào xem</span>
                            </div>
                        </a>
                        <h4><%=rs3.getString(2)%></h4>
                        <p><a class="item_add" href="http://localhost:8080/Demo/AddCart?id=<%=rs3.getInt(1)%>&trangchu=1"><i></i> <span class=" item_price"><%=rs3.getString(3)%></span></a></p>

                    </div>
                </div>
                <%};%>
                <a href="http://localhost:8080/Demo/ListProduct?trangthai=sale&page=1" STYLE="float: right; margin-top: 20px ; font-size: 20px; color:#f63;">Xem thêm<i class="fa fa-angle-double-right"></i></a>
                <div class="clearfix"> </div>
            </div>
            <div class="product-one">
                <div class="text-left"  style="color: #9e2428; background: #fff;">
                    <img src="Nhom25_WebBanGiayNam/interface/images/hot.png" class="img-fluid" style="height:50px;" alt="" />
                </div>
                <hr class="light">
                <% ResultSet rs4 = (ResultSet) request.getAttribute("rs4");
                    while (rs4.next()){
                %>
                <div class="col-md-3 product-left">
                    <div class="p-one simpleCart_shelfItem">

                        <a href="http://localhost:8080/Demo/ChiTiet?id=<%=rs4.getInt(1)%>">
                            <img src="<%=rs4.getString(4)%>" alt="" />
                            <div class="mask">
                                <span>Vào xem</span>
                            </div>
                        </a>
                        <h4><%=rs4.getString(2)%></h4>
                        <p><a class="item_add" href="http://localhost:8080/Demo/AddCart?id=<%=rs4.getInt(1)%>"><i></i> <span class=" item_price"><%=rs4.getString(3)%></span></a></p>

                    </div>
                </div>
              <%};%>

                <a href="http://localhost:8080/Demo/ListProduct?trangthai=hot&page=1" STYLE="float: right; margin-top: 20px;font-size: 20px;color:#f63;">Xem thêm<i class="fa fa-angle-double-right"></i></a>
                <div class="clearfix"> </div>
            </div>
            <div class="product-one">
                <div style="color: #702428 ;background: #fff;">
                    <img src="Nhom25_WebBanGiayNam/interface/images/thuong hieu.png" class="img-fluid" style="height:50px;" alt="" />
                </div>
                <hr class="light">
                <% ResultSet r = (ResultSet) request.getAttribute("rs5");
                while (r.next()){%>
                <div class="col-md-3 product-left">
                    <div class="p-one simpleCart_shelfItem rounded-circle border-dark ">
                        <a href="http://localhost:8080/Demo/ListProduct?type=<%=r.getInt(1)%>&page=1">
                            <img src="<%=r.getString(4)%>" style="width: auto; height: 50px" alt="" />
                            <div class="mask">
                                <span>Vào Xem</span>
                            </div>
                        </a>

                    </div>
                </div>
                <%}%>
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
<%--quảng cáo--%>
<script>
$(document).ready(function() {
$(".hop-thoai").addClass('show');
$(".close").click(function(event) {
$(".hop-thoai").removeClass('show');
});

$(".qcao").addClass('show');
$('.dongqcao').click(function(event) {
    $(".qcao").removeClass('show');
});

});
</script>
<%--end--%>

</body>
</html>