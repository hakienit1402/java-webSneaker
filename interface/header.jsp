<%@ page import="vn.edu.nlu.fit.model.User" %>
<%@ page import="vn.edu.nlu.fit.model.Cart" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>header</title>
</head>
<body>
<div class="top-header sticky-top">
    <div class="container">
        <div class="top-header-main">

            <div class="col-md-3 top-header-left">
                <a a href="http://localhost:8080/Demo/TrangChu"><img
                        src="Nhom25_WebBanGiayNam/interface/images/logo.png" width="200" height="100"
                        style="border-radius:5%; position:absolute; margin-top: -28px;" alt=""/></a>
            </div>
            <div class="col-md-5 top-header-middle">
                <%--search--%>
<%--                <div class="search-bar ">--%>
<%--                    <input type="text" value="Search" onfocus="this.value = '';"--%>
<%--                           onblur="if (this.value == '') {this.value = 'Search';}">--%>
<%--                    <input type="submit" value="">--%>
<%--                </div>--%>
                    <form class="form-inline my-2 my-lg-0" method="post" action="ListProduct">
                        <div class="search-bar" style="background: white">
                            <input type="text" name="search" placeholder="Search" style="border: none;width: 85%">
                            <button type="submit" style="background: white;border: none;padding: 0px;width: 13%;height: 34px"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                <div class="cmnm" style="position:absolute;">
                    <marquee align="center" direction="left" height="40" scrollamount="6" width="100%">
                        <h4> CHÚC MỪNG NĂM MỚI - AN KHANG THỊNH VƯỢNG </h4>
                    </marquee>
                </div>

            </div>
            <div class="col-md-4 top-header-right" style="font-size:15px;font-weight:bold;color:#fff;">
                <div class="row" align="center">
                    <%--nguoidung--%>
                    <div class="col-md-7">
                        <a href="taikhoan.html">
                            <div class="total">

                            </div>
                            <%
                                if (session.getAttribute("Auth") != null) {
                                    User u = (User) session.getAttribute("Auth");
                            %>
                            <div class="navbar navbar-expand-sm" style="padding: 0px; margin-top: -20px;">
                                <li class="nav-item dropdown" style="list-style: none; cursor: pointer">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown">
                                        Chào,<%=u.name%>
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="Nhom25_WebBanGiayNam/interface/taikhoan.jsp">Quản lý tài khoản</a>
                                        <a class="dropdown-item" href="#">Giỏ Hàng</a>
                                        <a class="dropdown-item" href="http://localhost:8080/Demo/LogOut">Đăng xuất</a>
                                    </div>
                                </li>
                               <a href="#"><i class="fa fa-user" style="font-size: 20px;margin-top: -11px"></i></a>
                            </div>

                            <%} else {%>
                            <%--                    <a href="http://localhost:8080/Demo/dangnhap/dangnhap.jsp"><span style="color: #702428">Tài Khoản</span></a>--%>
                            <div class="navbar navbar-expand-sm" style="padding: 0px; margin-top: -20px;">
                                <li class="nav-item dropdown" style="list-style: none; cursor: pointer">
                                    <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                                        Tài khoản
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item"
                                           href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/Login.jsp">Đăng
                                            nhập</a>
                                        <a class="dropdown-item"
                                           href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/dangKy.jsp">Đăng
                                            kí</a>
                                    </div>
                                </li>
                                <a href="#"><i class="fa fa-user" style="font-size: 20px;margin-top: -11px"></i></a>
                            </div>
                            <%
                                }
                                ;
                            %>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                    <%--Giohang--%>
                    <div class="col-md-5">
                        <a>
                            <% Cart c = (Cart) session.getAttribute("Cart");
                                int count = c == null ? 0 : c.list().size();
                            %>
                            <div style="margin-top: -6px;">
                                <span class="badge" style="color:red; font-weight:bold;margin-left: 92px;background:yellow;"><%=count%></span>

                                <a>
                                    <div class="total"></div>
                                    <span>Giỏ Hàng</span>
                                    <a href="http://localhost:8080/Demo/GioHang"> <i class="fa fa-shopping-cart"
                                                                                     style="font-size: 20px"></i>
                                    </a>
                                </a>
                            </div>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


</body>
</html>
