<%@ page import="projectweb2019.Other.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<jsp:include page="./header.jsp"/>
<link rel="stylesheet" href="<%=Util.fullPath ("css/threeform.css")%>">
<%
    String email = (String) request.getAttribute("email") == null ? "" : (String) request.getAttribute("email");
    String errmail = (String) request.getAttribute("errmail") == null ? "" : (String) request.getAttribute("errmail");
%>
<section id="threeform" class="p-5" style="min-height: 650px">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <header class="card-header">

                        <h4 class="card-title mt-2">Quên mật khẩu</h4>
                    </header>
                    <article class="card-body">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can reset your password here.</p>
                            <div class="panel-body">
                                <form action="<%=Util.fullPath("doForgotPass")%>" method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i
                                                    class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <input id="email" name="email" placeholder="email address"
                                                   value="<%=email%>" class="form-control" type="email">
                                        </div>
                                        <div class=" alert-danger">
                                            <%=errmail%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input  class="btn btn-lg btn-primary btn-block"
                                                type="submit">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="./footer.jsp"/>

</body>
</html>
