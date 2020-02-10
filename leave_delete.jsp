<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LEAVE DELETE</title>
</head>
<body bgcolor=#CCFFFF>
<% 
String leave_id=request.getParameter("li");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("delete from leave_details where leave_id=?");
ps.setString(1, leave_id);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values deleted successfully</h3>
<p> <a href="leave_delete.html"><button type="button">BACK</button></a></p>
<%} else {%>
<h3> values not deleted</h3>
<p> <a href="delete.html"><button type="button">Try Again</button></a> </p>
<%} %>
<center>
</body>
</html>