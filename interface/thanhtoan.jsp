<%@ page import="vn.edu.nlu.fit.model.Product" %>
<%@ page import="vn.edu.nlu.fit.model.Cart" %>
<%@ page import="vn.edu.nlu.fit.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>Title</title>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/style.css">
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/lib/fontawesome-free-5.11.2-web/css/all.css">
</head>
<body>
<% if (session.getAttribute("Auth")==null){
    response.sendRedirect("http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/Login.jsp");
}else { User u = (User) session.getAttribute("Auth");
%>
<jsp:include page="./header.jsp"/>
<div class="breadcrumbs">

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold ;"></i><a href="index.jsp">Trang Chủ</a></li>
                <li><a href="giohang.jsp">Giỏ hàng</a></li>
                <li class="active">Thanh toán</li>
            </ol>
        </div>

</div>
<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./MenuUser.jsp"/>
        <div class="shoes col-md-9">
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                        <tr>
                            <th>Tên sản phẩm</th>
                            <th>Hình ảnh</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% Cart c =(Cart) request.getAttribute("Cart");
                            if(c==null) c=new Cart();
                            for (Product p:c.list()) {
                        %>
                        <tr class="odd gradeX">
                            <td><%=p.getName()%> </td>
                            <td> <img src="<%=p.getImg()%>" width="100px" height="100px"></td>
                            <td><%=p.getSoluong()%></td>
                            <td><%=p.total()%>VNĐ </td>
                        </tr>
                        <%};%>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->

            </div>
            <h4 style="margin-left: 5%">Tổng tiền:<%=c.tongtien()%>VNĐ</h4>
            <div class="col-lg-6" style="margin-left: 5%;">
                <div class="card-body" style="padding: 15px;background: #eeeeee;border-radius: 30px;">
                    <h5 class="card-title text-center" style="color: #007bff;font-weight: bold;font-size: 2.5rem">Thông tin người nhận</h5>
                    <form class="form-signin" action="ThanhToan" method="post">
                        <div class="form-label-group">
                            <label for="inputName">Họ tên</label> <input type="text" id="inputName" name="name" class="form-control" value="<%=u.getName()%>" placeholder="Họ tên" required autofocus>

                        </div>
                        <div class="form-label-group">
                            <label for="inputsdt">SĐT</label>
                            <input type="number" id="inputsdt" name="sdt" class="form-control" value="<%=u.getSdt()%>" placeholder="SĐT" required>
                        </div>
                        <div class="form-label-group">
                            <label for="inputdiachi">Địa chỉ</label>
                            <input type="text" id="inputdiachi" name="diachi" value="<%=u.getDiachi()%>" class="form-control" placeholder="Địa chỉ" required>
                        </div>
                        <input style="display: none" name="id" value="<%=u.getId()%>">
                        <input style="display: none" name="ngaymua" value="<%=c.ngayMua()%>">
                        <div class="form-label-group">
                            <div><p>Phương thức thanh toán</p>
                                <label style="width: 49%;">
                                    <input type="checkbox" style="float: left">
                                    <p>Thanh toán trước qua paypal</p>
                                </label>
                                <label style="width: 49%">
                                    <input type="checkbox" style="float: left">
                                    <p>Thanh toán trước qua visa</p>
                                </label>
                            </div>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Thanh toán</button>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
            <div class="col-lg-4" style="margin-left: 5%;font-size: 17px;border-radius: 30px;background: #fdec5c">
                <h2 style="text-align: center">Hóa đơn</h2>
                <div style="margin-left: 15px;margin-top: 20px"><span>Tổng tiền:<%=c.tongtien()%>VNĐ</span></div>
                <div style="margin-left: 15px;margin-top: 20px"><span>Thuế 10%:<%=(c.tongtien()*0.1)%>VNĐ</span></div>
                    <hr class="light">
                <div style="margin-left: 15px;margin-top: 20px;padding-bottom: 15px"><span>Thành tiền:<%=(c.tongtien())+(c.tongtien()*0.1)%>VNĐ</span></div>
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
<%};%>
</body>
</html>