<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 13/12/2019
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
</head>
<body>
<div class=" col-md-3 " style="background:linear-gradient(-180deg,#f53d2d,#f63); font-size:18px;" >
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="http://localhost:8080/Demo/TrangChu" style="  background:#f63; color:#fff; font-size:25px;" class="active">DANH MỤC </a>
                </li>
                <li>
                    <a href="#">Xu hướng<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <%
                            ResultSet rs2 = (ResultSet) request.getAttribute("rs2");
                            while (rs2.next()){
                        %>
                        <li>
                            <a href="http://localhost:8080/Demo/ListProduct?nam=<%=rs2.getInt(1)%>&page=1" ><%= rs2.getString(2) %></a>
                        </li>
                        <% }; %>
                    </ul>
                </li>
                <li>
                    <a href="#"> Hãng<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <%
                            ResultSet rs = (ResultSet) request.getAttribute("rs");
                            while (rs.next()){
                        %>
                        <li>
                            <a href="http://localhost:8080/Demo/ListProduct?type=<%=rs.getInt(1)%>&page=1" ><%= rs.getString(2) %></a>
                        </li>
                        <% }; %>
                    </ul>
                </li>
                <li>
                    <a href="#">Loại giày<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <% ResultSet loai = (ResultSet) request.getAttribute("loai");
                        while (loai.next()){
                        %>
                        <li>
                            <a href="http://localhost:8080/Demo/ListProduct?loai=<%=loai.getString(2)%>&page=1"><%=loai.getString(2)%></a>
                        </li>
                        <%}%>
                    </ul>
                </li>
                <li>
                    <a href="http://localhost:8080/Demo/ListProduct?trangthai=sale&page=1">Sale<span></span></a>

                </li>
            </ul>
        </div>
    </div>
    <div class="quangcao">
        <div class="qcao">
            <img src="Nhom25_WebBanGiayNam/interface/images/1114.jpg" alt="" height="450" width="250">
            <button class="dongqcao">Close</button>
        </div>

    </div>

</div>
</body>
</html>
