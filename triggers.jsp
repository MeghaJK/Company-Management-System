<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Triggers</title>
</head>
<style>
body{
	background-image:url(trig.jpg);
	height: 100vh;
	background-size:cover;
	background-position:cover;	
}

table {
    border-collapse: collapse;
    width: 100%;
    opacity:0.8;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

a {
        		    background-color: blue; /* Green */
          border: none;
          color: white;
          padding: 6px 22px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          -webkit-transition-duration: 0.4s; /* Safari */
          transition-duration: 0.4s;
          cursor: pointer;
      }

      a {
          background-color: red; 
          color: black; 
          border: skyblue; 
               
      }


      a:hover {
          background-color: pink;
          color: black;

</style>

<body>
<center><h1><font color="black" size="5">Triggers of Employee Database</font></h1></center><br/><br/>

<table style="background-color:rgba(100, 100, 100, 0.5);">
<tr bgcolor="#DC143C">
<th>Employee Id</th>
<th>Employee Name</th>
<th>Action Performed</th>
<th>Execution Time</th>
</tr>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("select * from log");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor="#FF6347">
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>

</tr>
<%}%>
</table><br><br><br><br><br><br>
<center><a href="company_status.html">BACK</a></center>
	


</body>
</html>
