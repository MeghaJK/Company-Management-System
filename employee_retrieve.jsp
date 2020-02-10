<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE RETRIEVE</title>
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
<h1>Details Of Employees</h1>
<table border=1>
<tr bgcolor="pink">
<td>EMPLOYEE ID</td>
<td>EMPLOYEE NAME</td>
<td>EMPLOYEE PHONE</td>
<td>EMPLOYEE ADDRESS</td>
<td>EMPLOYEE MAIL</td>
<td>GENDER</td>
<td>DESIGNATION</td>


</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("select * from employee_details");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor="MistyRose">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<%} %>
</table>
</center>
<div>
<center><a href="company_status.html"><h3><b><i><button type="button" onclick="">BACK</button></i></b></h3></a></center>
</div>
</body>
</html>