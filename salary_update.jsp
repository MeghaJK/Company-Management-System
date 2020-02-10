<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SALARY UPDATE</title>
</head>
<center>
<body bgcolor="EFFBF8">
<center>
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String sal_id=request.getParameter("si");
String emp_id=request.getParameter("ei");
String dept_id=request.getParameter("di");
int deduction=Integer.parseInt(request.getParameter("dd"));
int sal_amount=Integer.parseInt(request.getParameter("sa"));
String month=request.getParameter("mn");
PreparedStatement ps=con.prepareStatement("update salary set emp_id=?,dept_id=?,deduction=?,sal_amount=?,month=? where sal_id=?");
ps.setString(1, emp_id);
ps.setString(2, dept_id);
ps.setInt(3, deduction);
ps.setInt(4, sal_amount);
ps.setString(5, month);
ps.setString(6, sal_id);
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
<a href=salary_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>