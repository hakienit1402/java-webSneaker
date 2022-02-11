<%@ page import="vn.edu.nlu.fit.model.User" %>
<%@ page import="vn.edu.nlu.fit.model.Cart" %>
 <!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>header</title>
</head>
<body>
<div class="top-header sticky-top" style="	border-bottom: 1px solid black;">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-4 top-header-left" style="margin-top: -35px;margin-bottom: -20px" >
                <a href="http://localhost:8080/Demo/TrangChu" ><img src="Nhom25_WebBanGiayNam/interface/images/logo.png" style="border-radius: 42%" alt="" /></a>
                <br/>
                <span style="font-size: 20px;font-weight: bold; color: RED">  SHOP GIÀY NAM </span>
            </div>

            <div class="col-md-4 top-header-middle">
                <div class="search-bar">
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
            </div>
            <div class="col-md-4 top-header-right inline"STYLE="top: 10px;  left: 70px;}">
                <div class="sing box_2" style="margin-top: 0px">
                    <a href="taikhoan.html"></a>
                    <div class="total" style="margin-left:70px;margin-top: 10px">
                    </div>
                    <%
                        if (session.getAttribute("Auth")!=null){
                            User u = (User) session.getAttribute("Auth");
                    %>
                    <%--                            <span><%=u.name%></span>--%>
                    <div class="navbar navbar-expand-sm" style="padding: 0px; margin-top: -32px;">
                        <li class="nav-item dropdown" style="list-style: none; cursor: pointer">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" >
                               Chào,<%=u.name%>
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="#">Quản lý tài khoản</a>
                                <a class="dropdown-item" href="#">Giỏ Hàng</a>
                                <a class="dropdown-item" href="http://localhost:8080/Demo/LogOut">Đăng xuất</a>
                            </div>
                        </li>
                        <i class="fa fa-user" style="font-size: 20px;margin-top: -11px"></i>
                    </div>
                    <%}else {%>
                    <%--                    <a href="http://localhost:8080/Demo/dangnhap/dangnhap.jsp"><span style="color: #702428">Tài Khoản</span></a>--%>
                    <div class="navbar navbar-expand-sm" style="padding: 0px; margin-top: -32px;">
                        <li class="nav-item dropdown" style="list-style: none; cursor: pointer">
                            <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" >
                                Tài khoản
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/Login.jsp">Đăng nhập</a>
                                <a class="dropdown-item" href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/dangKy.jsp">Đăng kí</a>
                            </div>
                        </li>
                        <i class="fa fa-user" style="font-size: 20px; margin-top: -11px"></i>
                    </div>
                    <%};%>

                    </a>
                    <div class="clearfix"> </div>
                </div>
                <div class="cart box_1" style="margin-top: -20px">
                    <a href="http://localhost:8080/Demo/GioHang">
                        <% Cart c =(Cart) session.getAttribute("Cart");
                            int count = c == null ? 0 :c.list().size();
                        %>
                        <span class="badge" style="margin-left: 82px;background: red"><%=count%></span>
                        <h3><div class="total"></div>
                            <span>Giỏ Hàng</span>
                            <i class="fa fa-shopping-cart" style="font-size: 20px"></i>

                        </h3>
                    </a>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

</body>
</html>
