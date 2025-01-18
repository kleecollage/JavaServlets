<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String background = request.getParameter("backgroundColor");
    if (background == null || background.trim().isEmpty()) {
        background = "white";
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="<%=background%>">
    <h1>JSP Change color</h1>
Background color applied: <%=background%> <br />
<a href="index.jsp">Go Back</a>
</body>
</html>
