<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE DELETE</title>
</head>
<center>
<body bgcolor=#CCFFFF>
<% 
String emp_id=request.getParameter("ei");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("delete from employee_details where emp_id=?");
ps.setString(1, emp_id);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h2> values deleted successfully</h2>
<p> <a href="delete.html"><button type="button">BACK</button></a></p>
<%} else {%>
<h2> values not deleted</h2>
<p> <a href="employee_delete.html"><button type="button">Try Again</button></a> </p>
<%} %>
</center>
</body>
</html>