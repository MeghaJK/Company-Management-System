<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECRUIT UPDATE</title>
</head>
<center>
<body bgcolor="EFFBF8">
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String app_id=request.getParameter("ai");
String name=request.getParameter("nm");
String date=request.getParameter("dt");
int salary= Integer.parseInt(request.getParameter("sal"));
String designation=request.getParameter("ds");
String dept_id=request.getParameter("di");
PreparedStatement ps=con.prepareStatement("update recruit set name=?,date=?,salary=?,designation=?,dept_id=? where app_id=?");

ps.setString(1, name);
ps.setString(2, date);
ps.setInt(3, salary);
ps.setString(4, designation);
ps.setString(5, dept_id);
ps.setString(6, app_id);
int flag=ps.executeUpdate();

%>
<% if(flag>0){ %>
<h3> UPDATED SUCCESSFULLY</h3>
<%} else {%>
<h3> OOOPS FAILED!!!</h3>
<%} 
}
catch(Exception e)
{
System.out.println(e);
}
%>
<a href=recruit_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>