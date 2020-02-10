<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESIGNATION DELETE</title>
</head>
<body bgcolor=#CCFFFF>
<% 
String resg_id=request.getParameter("ri");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("delete from resignation where resg_id=?");
ps.setString(1, resg_id);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values deleted successfully</h3>
<p> <a href="resignation_delete.html"><button type="button">BACK</button></a></p>
<%} else {%>
<h3> values not deleted</h3>
<p> <a href="delete.html"><button type="button">Try Again</button></a> </p>
<%} %>
<center>
</body>
</html>