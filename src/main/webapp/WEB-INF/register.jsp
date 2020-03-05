<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/5/20
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please Register</h1>
    <form action="${pageContext.request.contextPath}/register" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password1">Password</label>
            <input id="password1" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="password2">Password</label>
            <input id="password2" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
