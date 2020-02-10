<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> STORED PROCEDURE</title>
</head>
<body bgcolor="#FFEBEE"> 
 <table align="center" border="1"> 
<%
try { 
 Class.forName("com.mysql.jdbc.Driver");  
} catch(Exception e){ e.printStackTrace(); 
 } 
 %> <tr bgcolor="pink"> 
 <td>MAXIMUM SALARY</td>
<td>MINIMUM SALARY</td>
<td>SUM OF SALARY</td>
<td>AVERAGE OF SALARY</td>
</tr> 
 <% 
 try{ 
 Connection 
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root"); 
response.setContentType("text/html"); 
 CallableStatement st=con.prepareCall("call salary_display ();");   
ResultSet rs =st.executeQuery(); 
 while(rs.next()) { 
%> 
 <tr bgcolor="#FFEBCD"> 
 
<td><%=rs.getString("max(sal_amount)")%></td> 
 <td><%=rs.getString("min(sal_amount)")%></td> 
 <td><%=rs.getInt("sum(sal_amount)")%></td> 
 <td><%=rs.getString("avg(sal_amount)")%></td> 
 
</tr> 
 
<% 
 
} 
 
 
 
} 
 catch(Exception  e){ 
 e.printStackTrace(); 
 } 
 %> 
 
 
 
</table> 
<br><br>
<center><a href="company_status.html"><button type="button">BACK</button></a></center>
</body>
</html> 
  
 
 
 
 
