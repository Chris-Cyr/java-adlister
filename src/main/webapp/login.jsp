<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <jsp:include page="partials/head.jsp"></jsp:include>

</head>
<body class="bg-primary">
<div class="row">
    <div class="col-12 d-flex justify-content-center">
        <jsp:include page="partials/navbar.jsp"></jsp:include>
    </div>
</div>
    <div class="row">
        <div class="col-12 d-flex justify-content-center text-white">
            <h1>Login</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12 mt-4 d-flex justify-content-center">
        <label>
            <form method="post" action="login.jsp">
                <input type="text" name="username" placeholder="Username" class="m-1">
                <br>
                <input type="password" name="password" placeholder="Password" class="m-1">
                <div class="d-flex justify-content-center m-4">
                <button type="submit" class="btn btn-primary btn-outline-light">Submit</button>
                </div>
            </form>
        </label>
        </div>
    </div>

    <% if (request.getParameter("username") != null && request.getParameter("password") != null) {
        if (request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
    %>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
            integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
            integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
            crossorigin="anonymous"></script>
</div>
</body>
</html>
