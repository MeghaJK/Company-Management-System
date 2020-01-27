<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEPARTMENT UPDATE</title>
</head>
<center>
<body bgcolor="#CCFFCC">
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String dept_id=request.getParameter("di");
String emp_id=request.getParameter("ei");
String dept_name=request.getParameter("da");
String designation=request.getParameter("ds");
String dept_phone=request.getParameter("dp");

String dept_mail=request.getParameter("de");
PreparedStatement ps=con.prepareStatement("update department set emp_id=?,dept_name=?,designation=?,dept_phone=?,dept_mail=? where dept_id=?");
ps.setString(1, emp_id);
ps.setString(2, dept_name);
ps.setString(3, designation);
ps.setString(4, dept_phone);
ps.setString(5, dept_mail);
ps.setString(6, dept_id);

int flag=ps.executeUpdate();

%>
<br>
<% if(flag>0){ %>
<h1> UPDATED SUCCESSFULLY</h1>
<%} else {%>
<h1> OOOPS FAILED!!!</h1>
<%} 
}
catch(Exception e)
{
System.out.println(e);
}
%>
<a href=department_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>