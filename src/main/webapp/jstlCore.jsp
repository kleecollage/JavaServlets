<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL Core</title>
</head>
<body>
<h1>JSTL Core</h1>
<%-- Manipulation of variables --%>
<c:set var="name" value="John" />
Name variable: <c:out value="${name}" /> <br />
<%--Variable wit HTML code--%>
<c:out value="<h4>Hello</h4>" escapeXml="false" />
</body>
</html>
