<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- JSP Statements --%>
<%!
    // We declare a variable and their get method
    private String user = "John";

    public String getUser() {
        return this.user;
    }
    private int visitCounter = 1; // visit counter
%>
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
<%-- ////////////////////   EXPRESSIONS   ////////////////////  --%>
<h1>JSP Expressions</h1>
<a href="expressions.jsp">Link To JSP Expressions</a> <br/>
<h4>HTML Form</h4>
<form action="processForm.jsp" name="form1" method="post">
    Username: <input type="text" name="username" required/> <br/>
    Password: <input type="password" name="password" required/> <br/>
    <input type="submit" value="Submit" /> <br/>
</form>
<hr />
<%-- ////////////////////   SCRIPLETS   ////////////////////  --%>
<h1>JSP Scriptlets</h1>
<a href="scriptlets.jsp">Link to Scriptlets</a> <br />
<form action="backgroundColor.jsp" name="form2">
    Provide color: <input type="text" name="backgroundColor" required/><br />
    <input type="submit" value="Submit" /> <br/>
</form>
<hr />
<%-- ////////////////////   STATEMENTS   ////////////////////  --%>
<h1>JSP Statements</h1>
<p>User value through attribute: <%= this.user %></p>
<p>User value through method: <%= this.getUser() %></p>
<p>Visit Counter: <%=this.visitCounter++%></p>
<hr />
<%-- ////////////////////   DOCUMENTS JSPX   ////////////////////  --%>
<h1>Example Documents JSPX</h1>
<a href="documentJSP.jspx">Go To JSPX Document</a>
</body>
</html>
















