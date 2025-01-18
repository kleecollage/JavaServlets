<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Process Form</title>
</head>
<body>
<h1>Form process result</h1>
User: <%= request.getParameter("username") %> <br />
Password: <%= request.getParameter("password") %> <br />
<a href="index.jsp">Go Back</a>
</body>
</html>
