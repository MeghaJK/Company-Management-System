<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE UPDATE</title>
</head>
<center>
<body bgcolor="#CCFFCC">
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String emp_name=request.getParameter("en");
String emp_phone=request.getParameter("ep");
String emp_address=request.getParameter("ea");
String emp_mail=request.getParameter("em");
String gender=request.getParameter("gn");
String emp_designation=request.getParameter("ed");
String emp_id=request.getParameter("ei");
PreparedStatement ps=con.prepareStatement("update employee_details set emp_name=?,emp_phone=?,emp_address=?,emp_mail=?,gender=?,emp_designation=? where emp_id=?");
ps.setString(1, emp_name);
ps.setString(2, emp_phone);
ps.setString(3, emp_address);
ps.setString(4, emp_mail);
ps.setString(5, gender);
ps.setString(6, emp_designation);
ps.setString(7, emp_id);

int flag=ps.executeUpdate();

%>
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
<a href=employee_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>