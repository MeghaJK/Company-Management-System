<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECRUIT INSERT</title>
</head>
<body bgcolor="#FFF8DC">
<center>
<%
String app_id=request.getParameter("ai");
String name=request.getParameter("nm");
String date=request.getParameter("dt");
int salary=Integer.parseInt(request.getParameter("sal"));
String designation=request.getParameter("ds");
String dept_id=request.getParameter("di");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into recruit values(?,?,?,?,?,?)");
ps.setString(1, app_id);
ps.setString(2, name);
ps.setString(3, date);
ps.setInt(4, salary);
ps.setString(5, designation);
ps.setString(6, dept_id);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values inserted successfully</h3>
<p> <a href="recruit.html"> Back </a></p>
<%} else {%>
<h3> values not inserted</h3>
<p> <a href="recruit.html"> employee_details insert</a> </p>
<%} %>

<h3>
APPLICATION ID : <%= app_id %> <br>
APPLICANT NAME:  <%= name %> <br>
DATE: <%= date %> <br>
SALARY: <%= salary %> <br>
DESIGNATION: <%= designation %> <br>
DEPARTMENT ID: <%= dept_id %> <br>
</h3>
</center>
</body>
</html>