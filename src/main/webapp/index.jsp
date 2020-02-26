<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/26/20
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1; %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />

<% if (request.getParameter("reset") != null) counter = Integer.parseInt(request.getParameter("reset")); %>


<h1>The current count is <%= counter %>.</h1>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>