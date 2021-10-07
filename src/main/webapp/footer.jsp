<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 07/10/2021
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate= new GregorianCalendar();
    int currentYear=currentDate.get(Calendar.YEAR);
%>
<html>
<head>
    <title>Title</title>
<body>
</head>

    <p> &copy; Copyright <%=currentYear%> Mike Murach & Associates</p>
</body>
</html>
