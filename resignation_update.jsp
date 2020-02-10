<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESIGNATION UPDATE</title>
</head>
<center>
<body bgcolor="EFFBF8">
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
String resg_id=request.getParameter("ri");
String emp_id=request.getParameter("ei");
String emp_name=request.getParameter("en");
String resg_date=request.getParameter("rd");
String reason=request.getParameter("rea");
PreparedStatement ps=con.prepareStatement("update resignation set emp_id=?,emp_name=?,resg_date=?,reason=? where resg_id=?");
ps.setString(1, emp_id);
ps.setString(2, emp_name);
ps.setString(3, resg_date);
ps.setString(4, reason);
ps.setString(5, resg_id);

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
<a href=resignation_retrieve.jsp><button type="button">BACK </button></a>
</center>
</body>
</html>