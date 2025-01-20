<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/20/25
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Variables Scope</title>
</head>
<body>
<h1>Variables Scope</h1>
Variable request: <br />
Width: ${rectangleRequest.width} <br />
Height: ${rectangleRequest.height} <br />
Area: ${rectangleRequest.area} <br />
<br /> <br />
Variable sesssion: <br />
Width: ${rectangleSession.width} <br />
Height: ${rectangleSession.height} <br />
Area: ${rectangleSession.area} <br />
<br /> <br />
Variable application: <br />
Width: ${rectangleApplication.width} <br />
Height: ${rectangleApplication.height} <br />
Area: ${rectangleApplication.area} <br />
</body>
</html>
