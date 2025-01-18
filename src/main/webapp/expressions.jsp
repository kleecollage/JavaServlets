<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSPs with Expressions</title>
</head>
<body>
<h1>JSPs with Expressions</h1>
Concatenation: <%= "Greetings" + " " + " from JSP" %> <br />
Math operation: <%= Math.round(Math.random()*10) %> <br />
ID Session: <%= session.getId() %> <br />
<a href="index.jsp">Go Back</a>
</body>
</html>
