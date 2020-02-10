<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LEAVE UPDATE</title>
</head>
<center>
<body bgcolor="EFFBF8">
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String leave_id=request.getParameter("li");
String emp_id=request.getParameter("ei");
String from_date=request.getParameter("fd");
String to_date=request.getParameter("td");
String reason=request.getParameter("rs");
int days= Integer.parseInt(request.getParameter("ds"));
PreparedStatement ps=con.prepareStatement("update leave_details set emp_id=?,from_date=?,to_date=?,reason=?,days=? where leave_id=?");
ps.setString(1, emp_id);
ps.setString(2, from_date);
ps.setString(3, to_date);
ps.setString(4, reason);
ps.setInt(5, days);
ps.setString(6, leave_id);

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
<a href=leave_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>