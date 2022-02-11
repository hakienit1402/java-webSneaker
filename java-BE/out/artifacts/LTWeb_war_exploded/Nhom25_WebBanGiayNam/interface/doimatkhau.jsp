<%@ page import="lab7.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/login.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <script src="bootstrap-4.3.1-Nhom25_WebBanGiayNam/interface/dist/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1-dist/js/jquery.min.js"></script>
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
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5"style="background: #f8f8f8;">
                <div class="card-body">
                    <h5 class="card-title text-center" style="color: #007bff;font-weight: bold;font-size: 2.5rem">Quên mật khẩu</h5>
                    <form class="form-signin" action="<%= Util.fullPath("doLogin") %>" method="post">
                        <div class="form-label-group">
                            <input type="password" id="inputpass" name="pass" class="form-control" placeholder="Mật khẩu mới" required autofocus>
                            <label for="inputpass">Mật khẩu mới</label>
                        </div>
                        <div class="form-label-group">
                            <input type="text" id="inputma" name="pass" class="form-control" placeholder="Mã xác nhận" required autofocus>
                            <label for="inputma">Mã xác nhận</label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Gửi</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>