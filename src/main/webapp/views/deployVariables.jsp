<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deploy Variables</title>
</head>
<body>
<h1>Deploy Variables</h1>
<h3>Variable on scope request:</h3> ${message}
<br /> <hr />
<h3>Variable on scope session:</h3>
<h4>Rectangle</h4>
Width: : ${rectangle.width} <br />
Height: ${rectangle.height} <br />
Area: ${rectangle.area} <br />
<br />
<a href="${pageContext.request.contextPath}/index.jsp">Go Back</a>
</body>
</html>
