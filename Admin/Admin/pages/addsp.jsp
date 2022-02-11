<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Title</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                    <h1 class="page-header">Home > Danh Mục > Sản phẩm > Thêm</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="font-size: 25px">
                        Thông tin chung
                    </div>
                    <form method="post" action="http://localhost:8080/LTWeb_war_exploded/Themsp">
                    <div class="panel-body"  >
                        <div class="row" style="padding-top: 20px"  >
                            <label class="col-lg-2" style="font-size: 20px"> Hình ảnh </label>
                            <label class="col-lg-10" >
                            <div >
                                    Ảnh chính
                                    <input type="file" name="img1" style="font-size: 16px ; padding-top: 10px">
                            </div>
                            <div>
                                Mô tả 1
                                <input type="file" name="img2" style="font-size: 16px ; padding-top: 10px">
                            </div>
                            <div>
                                Mô tả 2
                                    <input type="file" name="img3" style="font-size: 16px ; padding-top: 10px">
                            </div>
                            <div>
                                Mô tả 3
                                    <input type="file" name="img4" style="font-size: 16px ; padding-top: 10px">
                            </div>
                                </label>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Tên </label>
                            <span class="col-lg-10">
                                     <label style="width: 500px" >
                                        <input class="form-control" name="ten" placeholder="...">
                                     </label>
                                     </span>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Hãng </label>
                            <span class="col-lg-10">
                                    <label style="width: 500px" >
                                        <input class="form-control" name="hang" placeholder="...">
                                     </label>
                            </span>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Giá thành </label>
                            <span class="col-lg-10">
                                    <label style="width: 500px" >
                                        <input class="form-control" name="gia" placeholder="...">
                                     </label>
                            </span>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Mô tả </label>
                            <span class="col-lg-10">
                                <label style="width: 500px">
                                    <textarea class="form-control" name="mota" rows="3" ></textarea>
                                </label>
                                     </span>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Loại giày </label>
                            <span class="col-lg-10">
                                <label style="width: 500px">
                                    <input class="form-control" name="loai" placeholder="Loại 1 or 2">
                                </label>
                                     </span>
                        </div>
                        <div class="row" style="padding-top: 20px">
                            <label class="col-lg-2" style="font-size: 20px"> Tác vụ </label>
                            <span class="col-lg-10">

                                 <button class="btn btn-group" type="submit"><i class="fa fa-save" style="font-size: 20px"> SAVE</i></button>
                                 <a class="btn btn-group" href="http://localhost:8080/Demo/adminProduct" style="background: #f0f0f0"><i class="fa fa-close" style="font-size: 20px"> CANCEL</i></a>
                                     </span>
                        </div>

                    </div>
                    </form>
                </div>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="../js/dataTables/jquery.dataTables.min.js"></script>
<script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../js/startmin.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
