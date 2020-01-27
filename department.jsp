<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEPARTMENT INSERT</title>
</head>
<style>


h1{ font-size:50} 
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
          background-color: yellow; 
          color: white; 
          border: skyblue; 
               
      }


      a:hover {
          background-color: green;
          color: black;

</style>
<body bgcolor="#FFF8DC">
<center>
<%
String dept_id=request.getParameter("di");
String emp_id=request.getParameter("ei");
String dept_name=request.getParameter("da");
String designation=request.getParameter("ds");
String dept_phone=request.getParameter("dp");
String dept_mail=request.getParameter("de");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into department values(?,?,?,?,?,?)");
ps.setString(1,dept_id);
ps.setString(2,emp_id);
ps.setString(3,dept_name);
ps.setString(4,designation);
ps.setString(5,dept_phone);
ps.setString(6,dept_mail);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<h3> values inserted successfully</h3>
<p> <a href="homepage.html"> BACK </a></p>
<%} else {%>
<p> <a href="department.html"> department insert</a> </p>
<%} %>


<h3>
DEPARTMENT ID: <%= dept_id %>
EMPLOYEE ID : <%= emp_id %> <br>
DEPARTMENT NAME: <%= dept_name %> <br>
DESIGNATION:<%= designation %><br>
DEPARTMENT PHONE: <%= dept_phone %> <br>
DEPARTMENT MAIL: <%= dept_mail %> <br>

</h3>
</center>
</body>
</html>