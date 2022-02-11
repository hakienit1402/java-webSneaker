<%@ page import="lab7.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<jsp:include page="./header.jsp"/>
<%--<link rel="stylesheet" href="<%=Util.fullPath ("css/threeform.css")%>">--%>
<%
    String errmatkhau = (String) request.getAttribute("errmatkhau")==null?"":(String) request.getAttribute("errmatkhau");
    String errmatkhaucon = (String) request.getAttribute("errmatkhaucon")==null?"":(String) request.getAttribute("errmatkhaucon");
    String errmaxacthuc = (String) request.getAttribute("errmaxacthuc")==null?"":(String) request.getAttribute("errmaxacthuc");
%>
<section id="threeform" class="register p-5" style="min-height: 650px">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <header class="card-header">
                        <h4 class="card-title mt-2">Đổi mật khẩu</h4>
                    </header>
                    <article class="card-body">
                        <form action="<%=Util.fullPath("ChangePassword2")%>" method="post">
                            <div class="form-group">
                                <label>Mã xác thực của bạn</label>
                                <input id="maxacthuc" onblur="" name="maxacthuc" value="" class="form-control"
                                       type="text" required>
                                <div id="error_maxacthuc"></div>
                                <div class=" alert-danger">
                                  <%=errmaxacthuc%>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu của bạn</label>
                                <input id="upassnew" onblur="checkPass()" name="upassnew"  value="" class="form-control"
                                       type="password" required>
                                <div id="error_upassnew"></div>
                                <div class=" alert-danger">
                                    <%=errmatkhau%>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Nhập lại mật khẩu</label>
                                <input id="upassnewcon" onblur="checkPassCon()" value="" name="upassnewcon"
                                       class="form-control" type="password" required>
                                <div id="error_upassnewcon"></div>
                                <div class=" alert-danger">
                                    <%=errmatkhaucon%>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block"> Đổi</button>
                            </div>
                        </form>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <br><br>
</section>
</body>
</html>
