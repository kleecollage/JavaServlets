<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Hello World JSP</h1>
<ul>
    <li><% out.println("Hello World with Scriptlets"); %></li>
    <li>${"Hello World with Expression Language (EL)"}</li>
    <li><%= "Hello World with Expressions TAG" %></li>
    <li><c:out value="Hello World With JSTL" /></li>
</ul>
<hr />
<h1>JSP Expressions</h1>
<a href="expressions.jsp">Link To JSP Expressions</a> <br/>
<h4>HTML Form</h4>
<form action="processForm.jsp" name="form1" method="post">
    Username: <input type="text" name="username" required/> <br/>
    Password: <input type="password" name="password" required/> <br/>
    <input type="submit" value="Submit" /> <br/>
</form>
</body>
</html>