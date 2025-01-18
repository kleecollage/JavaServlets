<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP with Scriptlets</title>
</head>
<body>
<h1>JSP with Scriptlets</h1>
<%-- Scriptlet to send data to browser --%>
<%
  out.println("Hi from Scriptlet");
%>
<br />
<%-- Scriplet to access implicit objects --%>
<%
    String appName = request.getContextPath();
    out.println("Application name: " + appName);
%>
<br />
<%-- Scriplet with conditioned code --%>
<%
    if (session != null && session.isNew()) {
%>
The session IS new
<%
    } else if (session != null){
%>
session is NOT new
<% } %>
<br />
<a href="index.jsp">go back</a>
</body>
</html>
