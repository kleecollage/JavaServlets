<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MVC Example</title>
</head>
<body>
<h1><%= "MVC Example" %></h1>
<br/>
<div style="color: darkred">${message}</div>
<br />
<a href="${pageContext.request.contextPath}/ServletController">
    Link to ServletController that deploys variables without parameters
</a> <br />
<a href="${pageContext.request.contextPath}/ServletController?action=addVariables">
    Link to ServletController to ADD new variables
</a> <br />
<a href="${pageContext.request.contextPath}/ServletController?action=listVariables">
    Link to ServletController to LIST variables
</a> <br />
</body>
</html>