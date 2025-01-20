<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    String backgroundColor = request.getParameter("backgroundColor");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body style="background-color:<%= backgroundColor %>">
<%--  In here you can put some cool content  --%>
</body>
</html>
