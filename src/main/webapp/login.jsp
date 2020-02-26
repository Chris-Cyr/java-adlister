<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/26/20
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

</head>
<body>
<h1>Login</h1>
<label>
    <form method="post" action="login.jsp">
        <input type="text" name="username" placeholder="Username">
        <br>
        <input type="password" name="password" placeholder="Password">
        <c:choose>
            boolean username = "password";
            <c:when  test="username">
                <%
                    String redirectURL = "http://localhost:8081/profile.jsp";
                    response.sendRedirect(redirectURL);
                %>
            </c:when>
            <c:otherwise>
                <%
                    String redirectURL = "http://localhost:8081/login.jsp";
                    response.sendRedirect(redirectURL);
                %>
            </c:otherwise>
        </c:choose>
    </form>
</label>

</body>
</html>
