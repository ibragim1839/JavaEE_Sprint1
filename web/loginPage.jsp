<%--
  Created by IntelliJ IDEA.
  User: Ibragim
  Date: 22.05.2022
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="vendors/navbar.jsp"%>
<%@include file="vendors/bootstrap.jsp"%>
    <div class="container mt-5 w-50 p-5 border">

        <%if(request.getParameter("error")!=null){%>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Attention!</strong> Login or password is wrong
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <form method="post" action="/login" class="">
                    <div class="from-group">
                        <label for="login-area">Login</label>
                        <input class="form-control" id="login-area" placeholder="Enter login" name="login">
                    </div>
                    <div class="form-group mt-3">
                        <label for="password-area">Password</label>
                        <input type="password" class="form-control" id="password-area" placeholder="Password" name="password">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-error" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-success">Sing in</button>
                    </div>
                </form>
            </div>
        <%}%>

        <%if(request.getParameter("success")!=null){%>
            <div class="text-center mx-auto mt-5">
                <h1>YOU ARE LOGGED IN</h1>
                <p>HIGH QUALITY ELECTRONIC DEVICES FOR CHEAP PRICE</p>
            </div>
        <%}%>

        <%if(request.getParameter("error")==null && request.getParameter("success")==null){%>

        <form method="post" action="/login" class="">
            <div class="from-group">
                <label for="login-area">Login</label>
                <input class="form-control" id="login-area" placeholder="Enter login" name="login">
            </div>
            <div class="form-group mt-3">
                <label for="password-area">Password</label>
                <input type="password" class="form-control" id="password-area" placeholder="Password" name="password">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-error" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Sing in</button>
            </div>
        </form>
        </div>
    <%}%>



</body>
</html>
