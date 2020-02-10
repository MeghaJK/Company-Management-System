<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LEAVE DETAILS</title>
</head>
<body bgcolor="#FFF8DC">
<center>
<%
String leave_id=request.getParameter("li");
String emp_id=request.getParameter("ei");
String from_date=request.getParameter("fd");
String to_date=request.getParameter("td");
String reason=request.getParameter("rs");
int days= Integer.parseInt(request.getParameter("ds"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into leave_details values(?,?,?,?,?,?)");
ps.setString(1,leave_id);
ps.setString(2,emp_id);
ps.setString(3,from_date);
ps.setString(4,to_date);
ps.setString(5,reason);
ps.setInt(6,days);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values inserted successfully</h3>
<p> <a href="leave_details.html"> Back </a></p>
<%} else {%>
<h3> values not inserted</h3>
<p> <a href="leave_details.html"> department insert</a> </p>
<%} %>

<h3>

LEAVE ID: <%= leave_id %>
EMPLOYEE ID : <%= emp_id %> <br>
FROM DATE: <%= from_date %> <br>
TO DATE:<%= to_date %><br>
REASON: <%= reason %> <br>
DAYS: <%= days %> <br>

</h3>
</center>
</body>
</html>