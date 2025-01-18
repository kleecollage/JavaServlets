<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Handle Errors</title>
</head>
<body>
<h1>Handle Errors</h1>
<p>Oops. Something went wrong: <%=exception.getMessage()%></p>
<textarea cols="30" rows="5">
  <% exception.printStackTrace(new PrintWriter(out)); %>
</textarea>
</body>
</html>
