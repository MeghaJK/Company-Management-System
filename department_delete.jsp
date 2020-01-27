<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEPARTMENT DELETE</title>
</head>
<body bgcolor=#CCFFFF>
<%
String dept_id=request.getParameter("di");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("delete from department where dept_id=?");
ps.setString(1, dept_id);
int flag=ps.executeUpdate();
%>
<center>
<br><br>
<% if(flag>0){ %>
<h1> values deleted successfully..</h1>
<p> <a href="delete.html"><button type="button">BACK</button></a></p>
<%} else {%>
<h1> values not deleted...</h1>
<h2><p> <a href="department_delete.html"><button type="button">Try Again</button></a> </p></h2>
<%} %>
</center>
</body>
</html>