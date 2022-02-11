<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Nhà cung cấp</title>

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
                            <h1 class="page-header">Home > Danh Mục > Nhà cung cấp</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->

                    <!-- /.row -->
                    <div class="row" style="margin-top: 20px">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading" style="font-size: 25px">
                                    Danh sách nhà cung cấp
                                    <a href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/Admin/Admin/pages/addHang.jsp" ><i class="fa fa-plus" width="20" height="20" style="margin-left:20px"> NEW </i></a>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive" style="font-size: 20px">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th> STT</th>
                                                    <th>Tên</th>
                                                    <th>Logo</th>
                                                    <th>Tác vụ</th>

                                                </tr>
                                            </thead>
                                            <tbody >
                                            <% ResultSet rs = (ResultSet) request.getAttribute("rs");
                                                int i = 1;
                                                while (rs.next()){
                                            %>
                                                <tr >
                                                    <td> <%= i++ %></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><img src="<%=rs.getString(4)%>" width="50" height="50"></td>
                                                    <td>
                                                        <a href="http://localhost:8080/Demo/AdminSuaHang?id=<%=rs.getString(1)%>"><i class="fa fa-edit " style="color:green;" ></i></a>
                                                        <a OnClick="return confirm('Are you sure')" href="http://localhost:8080/Demo/adminXoaHang?id=<%=rs.getString(1)%>"><i class="fa fa-trash " style="color:Red;" ></i></a>
                                                    </td>
                                                </tr>
                                                <% } %>
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
