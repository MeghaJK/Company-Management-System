<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SALARY DETAILS</title>
</head>
<body>
<style>
div{
width:450px;
padding:50px;
margin:auto;
font-size:40px;
}
</style>
</head>
<body bgcolor="EFFBF8">
<center>
<h1>Retrieve Details</h1>
<table border=1>
<tr bgcolor="pink">
<td>SALARY ID</td>
<td>EMPLOYEMENT ID</td>
<td>DEPARTMENT ID</td>
<td>DEDUCTION</td>
<td>SALARY AMOUNT</td>
<td>MONTH</td>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("select * from salary");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor="MistyRose">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getInt(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><%=rs.getString(6) %></td>
</tr>
<%} %>
</table>
</center>
<div>
<center><a href="company_status.html"><h3><b><i><button type="button" onclick="">BACK</button></i></b></h3></a></center>
</div>


</body>
</html>