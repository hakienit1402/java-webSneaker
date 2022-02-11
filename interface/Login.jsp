<%@ page import="lab7.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/login.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <script src="bootstrap-4.3.1-Nhom25_WebBanGiayNam/interface/dist/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1-dist/js/jquery.min.js"></script>
</head>
<body>
<%--<jsp:include page="./header.jsp"/>--%>

<%
    String errten = (String) request.getAttribute("errten");
    String erpass = (String) request.getAttribute("errpass");
%>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5"style="background: #f8f8f8;">
                <div class="card-body">
                    <h5 class="card-title text-center" style="color: #007bff;font-weight: bold;font-size: 2.5rem">Sign In</h5>
                    <form class="form-signin" action="<%= Util.fullPath("doLogin") %>" method="post">
                        <div class="form-label-group">
                            <input type="text" id="inputName" name="name" class="form-control" placeholder="Name" required autofocus>
                            <label for="inputName">Name</label>
                        </div>
                        <div class="alert-danger">
                            <%=errten == null ? "" : errten%>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="Password" required>
                            <label for="inputPassword">Password</label>
                        </div>
                        <div class="alert-danger">
                            <%=erpass == null ? "" : erpass%>
                        </div>

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Remember password</label>
                            <div class="custom-control mb-3" style="float: right">
                                <a href="#">Forgot Password?</a>
                            </div>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                        <hr class="my-4">
                        <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit" style="color: white;background: #ea4235;"><i class="fab fa-google mr-2"></i> Sign in with Google</button>
                        <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit" style="color: white;background: #3b5997;"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button>
                         <div class="custom-control mb-3" style="text-align: center;margin-top: 1em;">
                             <div class="mb-3">Tạo tài khoản mới ->
                             <a href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/dangKy.jsp" class="sign2" style="color: red">Click vào</a> </div>
                         </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>