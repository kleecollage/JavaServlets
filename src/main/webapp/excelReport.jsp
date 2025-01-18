<%--
  Created by IntelliJ IDEA.
  User: mrrobot
  Date: 1/17/25
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page errorPage="WEB-INF/HandleErrors.jsp" %>
<%@page import="web.excelreport.utils.Conversions, java.util.Date" %>
<%@page contentType="application/vnd.ms-excel;charset=UTF-8" %>
<%
  String fileName = "report.xls";
  response.setHeader("Content-Disposition", "inline;filename=" + fileName);
%>
<html>
<head>
    <title>Excel Report</title>
</head>
<body>
  <h1>Excel Report</h1>
  <table border="1">
    <tr>
      <th>Course</th>
      <th>Description</th>
      <th>Date</th>
    </tr>
    <tr>
      <td>1. Java Fundamentals</td>
      <td>Basic java syntax</td>
      <%-- ERROR --%>
      <td><%= Conversions.format("05-06-20") %></td>
    </tr>
    <tr>
      <td>2. Programming with Java</td>
      <td>We will put into practice the concepts of OOP</td>
      <td><%= Conversions.format(new Date()) %></td>
    </tr>
  </table>
</body>
</html>













