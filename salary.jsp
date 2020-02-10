<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SALARY INSERT</title>
</head>
<body bgcolor="#FFF8DC">
<center>
<%
String sal_id=request.getParameter("si");
String emp_id=request.getParameter("ei");
String dept_id=request.getParameter("di");
int deduction=Integer.parseInt(request.getParameter("dd"));
int sal_amount=Integer.parseInt(request.getParameter("sa"));
String month=request.getParameter("mn");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into salary values(?,?,?,?,?,?)");
ps.setString(1,sal_id);
ps.setString(2,emp_id);
ps.setString(3,dept_id);
ps.setInt(4,deduction);
ps.setInt(5,sal_amount);
ps.setString(6,month);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values inserted successfully</h3>
<p> <a href="salary.html"> Back </a></p>
<%} else {%>
<h3> values not inserted</h3>
<p> <a href="salary.html"> salary insert</a> </p>
<%} %>
<h3>
SALARY ID: <%= sal_id %> <br>
EMPLOYEE ID: <%= emp_id %> <br>
DEPARTMENT ID: <%= dept_id %> <br>
DEDUCTION: <%= deduction %> <br>
SALARY AMOUNT: <%= sal_amount %> <br>
MONTH: <%=month %> <br>
</h3>
</center>
</body>
</html>