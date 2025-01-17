<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Status Codes</title>
</head>
<body>
<header>
    <h1>Authentication Form</h1>
</header>
<main>
    <form name="form1" action="Servlet" method="post">
        <div>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required />
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required />
        </div>
        <div>
            <button type="submit">Submit</button>
        </div>
    </form>
</main>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>