<%@ page import="vn.edu.nlu.fit.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 20/12/2019
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="sanpham.jsp">GIÀY NAM</a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>

    <ul class="nav navbar-nav navbar-left navbar-top-links" style="font-size: 20px;">
        <li><a href="http://localhost:8080/Demo/TrangChu"><i class="fa fa-home fa-fw" ></i> Home</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-left navbar-top-links" style="font-size: 20px;">
        <li><a href="#"><i class="fa fa-close fa-fw" ></i> Maintenance </a></li>
    </ul>
    <ul class="nav navbar-right navbar-top-links">

        <li class="dropdown" style="font-size: 20px;">
            <%
                if (session.getAttribute("Auth")!=null){
                    User u = (User) session.getAttribute("Auth");
            %>
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> Chào,<%=u.name%> <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user" style="font-size: 20px;">
                <%--                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>--%>
                <%--                            </li>--%>
                <%--                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>--%>
                <%--                            </li>--%>
                <li class="divider"></li>
                <li><a href="http://localhost:8080/Demo/LogOut"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <%}else {%>
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> Administrator <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user" style="font-size: 20px;">
                <li><a href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/interface/Login.jsp"><i class="fa fa-user fa-fw"></i> Đăng nhập</a></li>
            </ul>
            <%};%>
        </li>
    </ul>
</nav>

</body>
</html>
