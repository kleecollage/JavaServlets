<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Handle Parameters</title>
</head>
<body>
<h1>Handle Parameters</h1>
<br/>
<form name="form1" action="${pageContext.request.contextPath}/Servlet" method="POST">
    User: <input type="text" name="user"/><br />
    Password: <input type="password" name="password"/><br />
    <input type="submit" value="Submit" />
</form>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>