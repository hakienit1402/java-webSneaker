<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Danh sách Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/dataTables/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/startmin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Nhom25_WebBanGiayNam/Admin/Admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
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
            <li><a href="#"><i class="fa fa-home fa-fw" ></i> Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-left navbar-top-links" style="font-size: 20px;">
            <li><a href="#"><i class="fa fa-close fa-fw" ></i> Maintenance </a></li>
        </ul>
        <ul class="nav navbar-right navbar-top-links">

            <li class="dropdown" style="font-size: 20px;">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Administrator <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user" style="font-size: 20px;">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu" style="font-size: 20px;">
                    <li class="sidebar-search">
                        <p style="font-size:25px; color: red; margin:auto;">Xin chào Admin </p>
                        <h2 style="margin:auto;">Kiên</h2>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="index.html" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard </a>
                    </li>
                    <li style="font-size: 20px;">
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Danh Mục <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="sanpham.jsp">Sản phẩm</a>
                            </li>
                            <li>
                                <a href="#">Nhà Cung Cấp</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i> Mặt Hàng <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="mathangsaphet.html">Loại giày</a>
                            </li>
                            <li>
                                <a href="mathangdahet.html">Xu hướng</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="donhang.html"><i class="fa fa-edit fa-fw"></i> Đơn Hàng <span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="danhsachAdmin.jsp"><i class="fa fa-user fa-fw"></i> Admin <span class="fa arrow"></span></a>
                        <!-- /.nav-second-level -->
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-users fa-fw"></i> Khách hàng <span class="fa arrow"></span></a>


                    </li>

                </ul>
            </div>
        </div>
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Home > Xu hướng</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <!-- /.row -->
            <div class="row" style="margin-top: 20px">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="font-size: 25px;height: 60px">
                            <p style="width: 200px;float: left">Xu hướng </p>

                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive" style="font-size: 20px">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Năm</th>
                                        <th>Số lượng sản phẩm</th>

                                    </tr>
                                    </thead>
                                    <tbody >
                                    <% ResultSet rs = (ResultSet) request.getAttribute("rs");
                                        int i = 1;
                                        while (rs.next()){
                                    %>
                                    <tr >
                                        <td><%= i++ %></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td>

                                        </td>


                                    </tr>
                                  <%}%>

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->

                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->

            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/dataTables/jquery.dataTables.min.js"></script>
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/dataTables/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="Nhom25_WebBanGiayNam/Admin/Admin/js/startmin.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
