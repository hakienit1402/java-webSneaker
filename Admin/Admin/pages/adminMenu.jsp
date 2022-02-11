<%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 19/12/2019
  Time: 6:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu" style="font-size: 20px;">
            <li class="sidebar-search">
<%--                <p style="font-size:25px; color: red; margin:auto;">Xin chào Admin </p>--%>
<%--                <h2 style="margin:auto;">Kiên</h2>--%>
                <!-- /input-group -->
            </li>
            <li>
                <a href="Nhom25_WebBanGiayNam/Admin/Admin/pages/index.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard </a>
            </li>
            <li style="font-size: 20px;">
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Danh Mục <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="http://localhost:8080/Demo/adminProduct">Sản phẩm</a>
                    </li>
                    <li>
                        <a href="http://localhost:8080/Demo/adminHang">Nhà Cung Cấp</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-table fa-fw"></i> Mặt Hàng <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Loại giày</a>
                    </li>
                    <li>
                        <a href="#">Xu hướng</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="http://localhost:8080/Demo/ListDonHang"><i class="fa fa-edit fa-fw"></i> Đơn Hàng <span class="fa arrow"></span></a>
            </li>
            <li>
                <a href="http://localhost:8080/Demo/adminListAdmin"><i class="fa fa-user fa-fw"></i> Admin <span class="fa arrow"></span></a>
                <!-- /.nav-second-level -->
            </li>

            <li>
                <a href="http://localhost:8080/Demo/adminListKhachhang"><i class="fa fa-users fa-fw"></i> Khách hàng <span class="fa arrow"></span></a>
            </li>

        </ul>
    </div>
</div>
</body>
</html>
