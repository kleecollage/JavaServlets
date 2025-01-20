<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Excel Report Generation</title>
</head>
<body>
<h1>Excel Report Generation</h1>
<a href="excelReport.jsp">Link to excel report</a>
<hr />
<h1>STATIC inclusion example</h1>
<ul>
    <li> <%@ include file="pages/news1.html" %> </li>
    <li> <%@ include file="pages/news2.jsp" %> </li>
</ul>
<hr />
<h1>DYNAMIC inclusion example</h1>
<%-- Public resource inclusion --%>
<jsp:include page="pages/publicResource.jsp" />
<%-- Private resource inclusion with parameters --%>
<jsp:include page="pages/privateResource.jsp" >
    <jsp:param name="backgroundColor" value="magenta"/>
</jsp:include>    
</body>
</html>














