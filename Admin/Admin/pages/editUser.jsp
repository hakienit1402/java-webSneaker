<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cập nhât thông tin</title>

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
    <jsp:include page="./AdminHeader.jsp"/>

    <!-- /.navbar-top-links -->

        <jsp:include page="./adminMenu.jsp"/>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Home > Cập Nhật Thông tin</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row" style="margin-top: 20px">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="font-size: 25px">
                           Thông tin chi tiết

                        </div>
                        <% ResultSet rs = (ResultSet) request.getAttribute("rs");%>
                        <form method="post" action="http://localhost:8080/Demo/Editadmin?id=<%=rs.getString(1)%>">
                        <!-- /.panel-heading -->
                        <div class="panel-body"  >

                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Tên </label>
                                <span class="col-lg-10">
                                     <label style="width: 500px" >
                                        <input class="form-control" name="ten" placeholder="..." value="<%=rs.getString(2)%>">
                                     </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Email </label>
                                <span class="col-lg-10">
                                    <label style="width: 500px" >
                                        <input class="form-control" name="email" placeholder="..." value="<%=rs.getString(3)%>">
                                     </label>
                            </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> SDT </label>
                                <span class="col-lg-10">
                                <label style="width: 500px">
                                   <input class="form-control" type="number" name="sdt" placeholder="..." value="<%=rs.getString(5)%>">
                                </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Địa chỉ </label>
                                <span class="col-lg-10">
                                <label style="width: 500px">
                                   <input class="form-control" name="diachi" placeholder="..." value="<%=rs.getString(6)%>">
                                </label>
                                     </span>
                            </div>
<%--                            <div class="row" style="padding-top: 20px">--%>
<%--                                <label class="col-lg-2" style="font-size: 20px"> Level </label>--%>
<%--                                <span class="col-lg-10">--%>
<%--                                <label style="width: 500px">--%>
<%--                                   <input class="form-control" name="level" placeholder="1 là admin, 2 là khách hàng" value="<%=rs.getString(7)%>">--%>
<%--                                </label>--%>
<%--                                     </span>--%>
<%--                            </div>--%>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Tác vụ </label>
                                <span class="col-lg-10">

                                  <button class="btn btn-group" type="submit"><i class="fa fa-save" style="font-size: 20px"> SAVE</i></button>
                                 <a class="btn btn-group" href="http://localhost:8080/Demo/adminListAdmin" style="background: #f0f0f0"><i class="fa fa-close" style="font-size: 20px"> CANCEL</i></a>
                                     </span>
                            </div>

                        </div>                        <!-- /.panel-body -->
                        </form>
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
