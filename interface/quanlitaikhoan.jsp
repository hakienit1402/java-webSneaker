<%@ page import="vn.edu.nlu.fit.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lí tài khoản</title>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="lib/fontawesome-free-5.11.2-web/css/all.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/bootstrap.css">
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/css/style.css">
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/jquery.min.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/menu.js"></script>
    <script src="Nhom25_WebBanGiayNam/interface/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="Nhom25_WebBanGiayNam/interface/lib/fontawesome-free-5.11.2-web/css/all.css">
</head>
<body>
<%
    String name = (String) request.getAttribute("name");
    String sdt = (String) request.getAttribute("sdt");
    String email = (String) request.getAttribute("email");
    String diachi = (String) request.getAttribute("diachi");

    String errtaikhoan = (String) request.getAttribute("errtaikhoan");
    String errsdt = (String) request.getAttribute("errsdt");
    String errmail = (String) request.getAttribute("errmail");
    String erraddress = (String) request.getAttribute("errdiachi");
%>
<jsp:include page="./header.jsp"/>
<div class="breadcrumbs">

        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><i class="fa fa-home" style="color: #FFF; font-size:20px; font-weight: bold ;"></i><a href="index.jsp">Trang Chủ</a></li>
                <li class="active">Quản lí tài khoản</li>
            </ol>
        </div>

</div>
<div class="container-fluid">
    <div class="row text-left" style="padding-left: 10px;">
        <jsp:include page="./MenuUser.jsp"/>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <h4>Cập Nhật Thông Tin</h4>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <%
                        if (session.getAttribute("Auth")!=null){
                            User u = (User) session.getAttribute("Auth");
                    %>
                    <form  method="post" action="http://localhost:8080/Demo/CapNhatThongTinNguoiDung">
                        <div class="alert-danger">
                            <%=errtaikhoan == null ? "" : errtaikhoan%>
                        </div>
                        <div class="form-group row">
                            <label for="text1" class="col-2 col-form-label">Tên của bạn</label>
                            <div class="col-8">
                                <input id="text1" name="name" placeholder="Tên của bạn" value="<%=u.getName()%>" class="form-control here" required="required" type="text">
                            </div>
                        </div>

                        <input style="display: none" name="id" value="<%=u.getId()%>">
<%--                        <div class="form-group row">--%>
<%--                            <label for="text2" class="col-2 col-form-label">Giới tính</label>--%>
<%--                            <div class="col-8">--%>
<%--                                <input id="text2" name="text" placeholder="YYYY-MM-DD" class="form-control here" required="required" type="text">--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class=" alert-danger">
                            <%=errmail == null ?"" : errmail%>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-2 col-form-label">Email*</label>
                            <div class="col-8">
                                <input id="email" name="email" placeholder="Email" value="<%=u.getEmail()%>" class="form-control here" required="required" type="text">
                            </div>
                        </div>
                        <div class=" alert-danger">
                            <%=errsdt == null ? "" : errsdt%>
                        </div>
                        <div class="form-group row">
                            <label for="sdt" class="col-2 col-form-label">Số điện thoại*</label>
                            <div class="col-8">
                                <input id="sdt" name="sdt" placeholder="Số điện thoại" value="<%=u.getSdt()%>" class="form-control here" required="required" type="number">
                            </div>
                        </div>
                        <div class=" alert-danger">
                            <%=erraddress== null ?"" : erraddress%>
                        </div>
                        <div class="form-group row">
                            <label for="publicinfo" class="col-2 col-form-label">Địa chỉ</label>
                            <div class="col-8">
                                <textarea id="publicinfo" name="diachi" cols="40" rows="4" class="form-control"> <%=u.getDiachi()%></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="offset-4 col-8">
                                <button name="submit" type="submit" class="btn btn-primary">Cập nhật
                                </button>
                            </div>
                        </div>
                    </form>
                    <%};%>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>