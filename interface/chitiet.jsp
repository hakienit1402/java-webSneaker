<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="fb:app_id" content="2695483303875857">
    <title>Chi tiết sản phẩm</title>
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
<script>(function(d, s, id) {
        var js, fjs=d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src ="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0&appId=2695483303875857";
        fjs.parentNode.insertBefore(js, fjs);

    }(document,'script','facebook-jssdk'));
</script>
<jsp:include page="./header.jsp"/>
<div class="breadcrumbs">

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size: 25px; font-weight: bold"></i><a style="color: #FFF; font-size:20px; font-weight: bold " href="index.jsp">Trang Chủ</a></li>
                <li class="active" style="color: #FFF; font-size:20px; font-weight: bold ">Chi tiết sản phẩm</li>
            </ol>
        </div>

</div>
<div class="single contact">
    <div class="container">
        <div class="single-main">
            <%
                ResultSet rs = (ResultSet) request.getAttribute("rs");
                while (rs.next()){
            %>
            <div class="col-12">
                    <div class="col-md-5">
                    <!--Carousel Wrapper-->
                        <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
                            <!--Slides-->
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="<%=rs.getString(4) %>"
                                         alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="<%=rs.getString(9) %>"
                                         alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="<%=rs.getString(10) %>"
                                         alt="Third slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="<%=rs.getString(11) %>"
                                         alt="Fo slide">
                                </div>
                            </div>
                            <!--/.Slides-->
                            <!--Controls-->
                            <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            <!--/.Controls-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-thumb" data-slide-to="0" class="active">
                                    <img src="<%=rs.getString(4) %>" width="100">
                                </li>
                                <li data-target="#carousel-thumb" data-slide-to="1">
                                    <img src="<%=rs.getString(9) %>" width="100">
                                </li>
                                <li data-target="#carousel-thumb" data-slide-to="2">
                                    <img src="<%=rs.getString(10) %>" width="100">
                                </li>
                                <li data-target="#carousel-thumb" data-slide-to="3">
                                    <img src="<%=rs.getString(11) %>" width="100">
                                </li>
                            </ol>
                        </div>
                    </div>

                <div class="details col-md-7">
                    <h3 class="product-title"><%=rs.getString(2) %></h3>
                    <div class="rating">
                        <div class="stars"> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star"></span> <span class="fa fa-star"></span></div> <span class="review-no">123 đánh giá</span>
                    </div>
                    <p class="product-description"><%=rs.getString(8)%></p>
                    <h4 class="price"><%= rs.getString(3) %></h4>
                    <p class="vote"><strong>91%</strong> of người mua hài lòng với sản phẩm này <strong>(87 bình chọn)</strong>
                    </p>
<%--                    <div>--%>
<%--                        <h5 class="sizes">Kích cỡ:</h5>--%>
<%--                        <a href="" target=""><button class="size btn btn-default" type="button">39</button></a>--%>
<%--                        <a href="" target=""><button class="size btn btn-default" type="button">40</button></a>--%>
<%--                        <a href="" target=""><button class="size btn btn-default" type="button">41</button></a>--%>

<%--                    </div>--%>
<%--                    <h5 class="colors">Màu: <span class="color orange not-available" ></span> <span class="color red" ></span></span> <span class="color blue"></span>--%>
<%--                    </h5>--%>
                    <div class="action"> <a href="http://localhost:8080/Demo/AddCart?id=<%=rs.getInt(1)%>&chitiet=1" target=""><button class="add-to-cart btn btn-default" type="button">MUA NGAY</button></a>
<%--                        <a href="" target=""><button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button></a>--%>
                    </div>
                </div>
                    <div class="clearfix"></div>
                <hr class="light">

        </div>
            <div class="info" style="margin-bottom: 5em;">
                <h3 style="color: #F63; font-size:25px; font-weight: bold ;">Thông tin chi tiết</h3>
                <div class="details">
<%--                    <h5><span>- Thương hiệu: </span><span><%=rs.getString(5)%></span></h5>--%>
                    <div class="description">
                        <span style="color: black; font-size:15px; font-weight: bold ;"><%=rs.getString(12)%></span>

                    </div>
                </div>
            </div>
            <%};%>
            <hr class="light">
                <div class="latest products">
                    <h3 style="color: #F63; font-size:25px; font-weight: bold ;"> Có thể bạn quan tâm</h3>
                    <div class="product-one">
                        <%
                            ResultSet rs1 = (ResultSet) request.getAttribute("rs1");
                            while (rs1.next()){
                        %>

                        <div class="col-md-3 product-left single-left">
                            <div class="p-one simpleCart_shelfItem">

                                <a href="http://localhost:8080/Demo/ChiTiet?id=<%=rs1.getInt(1)%>">
                                    <img src="<%= rs1.getString(4) %>" alt="" />
                                    <div class="mask mask1">
                                        <span>Vào xem</span>
                                    </div>
                                </a>
                                <h4><%=rs1.getString(2) %></h4>
                                <p><a class="item_add" href="#"><i></i> <span class=" item_price"><%=rs1.getDouble(3) %></span></a></p>

                            </div>
                        </div>
                        <% }; %>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
<hr class="light">
<div class="comment">
    <div class="evaluate" style="color: black ; font-size: 10px; font-weight: bold;">
        <h3 style="color: #F63; font-size:25px; font-weight: bold ;">Đánh giá trung bình</h3>
        <div class="fiveStar" >
            <p>5 <span class=" fa fa-star"></span></p>
            <div class="progress">

                <div class="progress-bar" role="progressbar" style="width: 70%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">70%</div>
            </div>
        </div>
        <div class="fourStar">
            <p>4 <span class=" fa fa-star"></span></p>
            <div class="progress">

                <div class="progress-bar" role="progressbar" style="width: 10%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">10%</div>
            </div>
        </div>
        <div class="threeStar">
            <p>3 <span class=" fa fa-star"></span></p>
            <div class="progress">

                <div class="progress-bar" role="progressbar" style="width: 15%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">15%</div>
            </div>
        </div>
        <div class="twoStar">
            <p>2 <span class=" fa fa-star"></span></p>
            <div class="progress">

                <div class="progress-bar" role="progressbar" style="width: 5%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">5%</div>
            </div>
        </div>
        <div class="oneStar">
            <p >1 <span class=" fa fa-star"></span></p>
            <div class="progress">

                <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">0%</div>
            </div>
        </div>
    </div>

    <div class="review">
        <p style="color: #F63; font-size:25px; font-weight: bold ;">Nhận xét</p>
<%--        <textarea class="textarea" placeholder="Nhập nhận xét"></textarea>--%>
        <div class="fb-comments" data-href="http://localhost:8080/Demo/ChiTiet?id" data-width="" data-numposts="5"></div>
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
</html>