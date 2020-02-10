<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE INSERT</title>
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
}
</style>
<center>
<body background='suc3.jpg'>
<%
String emp_id=request.getParameter("ei");
String emp_name=request.getParameter("en");
String emp_phone=request.getParameter("ep");
String emp_address=request.getParameter("ea");
String emp_mail=request.getParameter("em");
String emp_designation=request.getParameter("ed");
String gender=request.getParameter("gn");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
PreparedStatement ps=con.prepareStatement("insert into employee_details values(?,?,?,?,?,?,?)");
ps.setString(1, emp_id);
ps.setString(2, emp_name);
ps.setString(3, emp_phone);
ps.setString(4, emp_address);
ps.setString(5, emp_mail);
ps.setString(6, gender);
ps.setString(7, emp_designation);
int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>

<h3> values inserted successfully</h3>
<p> <a href="homepage.html"> Back </a></p>
<%} else {%>
<h3> values not inserted</h3>
<p> <a href="employee_details.html"> employee_details insert</a> </p>
<%} %>

<h3>
EMPLOYEE ID : <%= emp_id %> <br>
EMPLOYEE NAME:  <%= emp_name %> <br>
EMPLOYEE PHONE: <%= emp_phone %> <br>
EMPLOYEE ADDRESS: <%= emp_address %> <br>
EMPLOYEE MAIL: <%= emp_mail%> <br>
GENDER: <%= gender%> <br>
EMPLOYEE DESIGNATION:  <%= emp_designation %> <br>

</h3>
</center>
</body>
</html>