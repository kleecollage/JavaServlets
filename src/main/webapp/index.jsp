<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Hello World JSP</h1><br/>
<ul>
    <li><% out.println("Hello World with Scriptlets"); %></li>
    <li>${"Hello World with Expression Language (EL)"}</li>
    <li><%= "Hello World with Expressions TAG" %></li>
    <li><c:out value="Hello World With JSTL" /></li>
</ul>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>