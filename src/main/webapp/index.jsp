<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Http Sessions</title>
</head>
<body>
<h3>Sessions Example</h3>
<a href="SessionsServlet">Link to SessionsServlet</a>
<hr />
<h1>Shopping Cart!</h1>
<form action="CartServlet" name="form1" method="post">
    <p>Item to add: </p>
    <input type="text" name="item" required /> <br />
    <input type="submit" value="Add Item" />
</form>
</body>
</html>