<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGOUT</title>
</head>
<body>
<%
session.invalidate();
out.println("<script>alert('Thank You,Logged out Successfully');window.location.href='LOGIN.jsp';</script>");
%>
</body>
</html>