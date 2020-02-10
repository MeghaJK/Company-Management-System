<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESIGNATION INSERT</title>
</head>
<body bgcolor="#FFF8DC">
<center>
<%
String resg_id=request.getParameter("ri");
String emp_id=request.getParameter("ei");
String emp_name=request.getParameter("en");
String resg_date=request.getParameter("rd");
String reason=request.getParameter("rea");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into resignation values(?,?,?,?,?)");
ps.setString(1, resg_id);
ps.setString(2, emp_id);
ps.setString(3, emp_name);
ps.setString(4, resg_date);
ps.setString(5, reason);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values inserted successfully</h3>
<p> <a href="resignation.html"> Back </a></p>
<%} else {%>
<h3> values not inserted</h3>
<p> <a href="resignation.html"> resignation insert</a> </p>
<%} %>

<h3>
RESIGNATION ID : <%= resg_id %> <br>
EMPLOYEE ID:  <%= emp_id %> <br>
EMPLOYEE NAME: <%= emp_name %> <br>
RESIGNATION DATE: <%= resg_date %> <br>
REASON: <%= reason %> <br>

</h3>
</center>
</body>
</html>
