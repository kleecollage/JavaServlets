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
    <title>JSP that modify a JavaBean</title>
</head>
<body>
<h1>JSP that modify a JavaBean</h1>
<jsp:useBean id="rectangle" class="web.javabeans.Rectangle" scope="session" />
Modify attributes:
<br />
<%
  int withValue = 10;
  int heightValue = 5;
%>
<jsp:setProperty name="rectangle" property="width" value="<%= withValue %>" />
<jsp:setProperty name="rectangle" property="height" value="<%= heightValue %>" />
<br />
New width value: <%= withValue %> <br />
New height value: <%= heightValue %> <br />
<a href="index.jsp" >Go Back</a>
</body>
</html>













