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
<%-- Conditional code with if --%>
<c:set var="flag" value="true" />
<c:if test="${flag}">
    Flag is true
</c:if> <br />
<%-- Switch structure with c:choose --%>
<c:if test="${param.option != null}">
    <c:choose>
        <c:when test="${param.option == 1}">
            Option 1 selected
        </c:when>
        <c:when test="${param.option == 2}">
            Option 2 selected
        </c:when>
        <c:otherwise>
            Unknown option selected: ${param.option}
        </c:otherwise>
    </c:choose>
</c:if> <br />
<%-- Array iteration --%>
<%
    String[] names = {"John", "Jane", "James"};
    request.setAttribute("names", names);
%>
<ul>
    <c:forEach var="person" items="${names}" >
        <li>${person}</li>
    </c:forEach>
</ul>
<a href="index.jsp">Go Back</a>
</body>
</html>













