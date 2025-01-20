<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP that reads the values of JavaBean</title>
</head>
<body>
<h1>JSP that reads the values of JavaBean</h1>
<jsp:useBean id="rectangle" class="web.javabeans.Rectangle" scope="session" />
<br />
Width value: <jsp:getProperty name="rectangle" property="width"/>
<br />
Height value: <jsp:getProperty name="rectangle" property="height" />
<br />
Area value: <jsp:getProperty name="rectangle" property="area" />
<br />
<a href="index.jsp">Go Back</a>
</body>
</html>















