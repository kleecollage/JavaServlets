<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Variables</title>
</head>
<body>
<h1>Expression Language (EL) and Implicit Variables</h1>
<ul>
    <li>Application name: ${pageContext.request.contextPath}</li>
    <li>Browser: ${header["User-agent"]}</li>
    <li>Session ID: ${cookie.JSESSIONID.value}</li>
    <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
    <li>Parameter value: ${param.user}</li>
    <li>Parameter value: ${param["user"]}</li> <%-- Not recommended --%>
</ul>
</body>
</html>
