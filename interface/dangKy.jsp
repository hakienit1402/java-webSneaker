<%@ page import="lab7.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/login.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <script src="bootstrap-4.3.1-Nhom25_WebBanGiayNam/interface/dist/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1-dist/js/jquery.min.js"></script>
</head>
<body>
<%
String name = (String) request.getAttribute("name");
String pass = (String) request.getAttribute("pass");
String repass = (String) request.getAttribute("repass");
String sdt = (String) request.getAttribute("sdt");
String email = (String) request.getAttribute("umail");
String diachi = (String) request.getAttribute("diachi");

    String errtaikhoan = (String) request.getAttribute("errtaikhoan");
    String errmatkhau = (String) request.getAttribute("errmatkhau");
    String errmatkhaucon = (String) request.getAttribute("errmatkhaucon");
    String errten = (String) request.getAttribute("errten");
    String errsdt = (String) request.getAttribute("errsdt");
    String errmail = (String) request.getAttribute("errmail");
    String erraddress = (String) request.getAttribute("errdiachi");
%>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5"style="background: #f8f8f8;">
                <div class="card-body">
                    <h5 class="card-title text-center" style="color: #007bff;font-weight: bold;font-size: 2.5rem">Đăng ký</h5>
                    <form class="form-signin" action="<%= Util.fullPath("DangKy") %>" method="post">
                    <div class="form-label-group">
                        <input type="text" id="inputName" name="name" class="form-control" placeholder="Họ tên" value="<%=name == null ? "" :name%>" required autofocus>
                        <label for="inputName">Họ tên</label>
                    </div>
                        <div class="alert-danger">
                            <%=errtaikhoan == null ? "" : errtaikhoan%>
                        </div>
                        <div class="form-label-group">
                            <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email" required autofocus>
                            <label for="inputEmail">Email</label>
                        </div>
                        <div class=" alert-danger">
                            <%=errmail == null ?"" : errmail%>
                        </div>

                        <div class="form-label-group">
                        <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="Mật khẩu" required autofocus>
                        <label for="inputPassword">Mật khẩu</label>
                    </div>
                        <div class=" alert-danger">
                            <%=errmatkhau == null ? "" : errmatkhau%>
                        </div>
                        <div class="form-label-group">
                            <input type="password" id="inputRepassword" name="repass" class="form-control" placeholder="Nhập lại mật khẩu" required autofocus>
                            <label for="inputRepassword">Nhập lại mật khẩu</label>
                        </div>
                        <div class=" alert-danger">
                            <%=errmatkhaucon == null ?"" : errmatkhaucon%>
                        </div>
                        <div class="form-label-group">
                            <input type="number" id="inputSDT" name="sdt" class="form-control" placeholder="Số điện thoại" value="<%=sdt%>" required autofocus>
                            <label for="inputSDT">Số điện thoại</label>
                        </div>
                        <div class=" alert-danger">
                            <%=errsdt == null ? "" : errsdt%>
                        </div>
                        <div class="form-label-group">
                            <input type="text" id="inputDiachi" name="diachi" class="form-control" placeholder="Địa chỉ"  required autofocus>
                            <label for="inputDiachi">Địa chỉ</label>
                        </div>
                        <div class=" alert-danger">
                            <%=erraddress== null ?"" : erraddress%>
                        </div>
                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Đăng ký</button>
<!--                    <hr class="my-4">-->
<!--                    <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit" style="color: white;background: #ea4235;"><i class="fab fa-google mr-2"></i> Sign in with Google</button>-->
<!--                    <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit" style="color: white;background: #3b5997;"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button>-->
<!--                    <div class="custom-control mb-3" style="text-align: center;margin-top: 1em;">-->
<!--                        <div class="mb-3">Tạo tài khoản mới ->-->
<!--                            <a href="http://localhost:63342/untitled/laptrinhWeb/DoAnWeb/dangKy.html" class="sign2" style="color: red">Click vào</a> </div>-->
<!--                    </div>-->
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>