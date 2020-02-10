<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>

</head>

<body >
<%
try{
	int k=0;
	String a=request.getParameter("Username");
	String b=request.getParameter("Password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
	Statement stmt = con.createStatement();
	String q="select * from login where username='"+a+"' and password='"+b+"'";
	ResultSet rs=stmt.executeQuery(q);
	if(rs.next()){
		session.setAttribute("thename",a);
		session.setAttribute("password",b);
		response.sendRedirect("HOMEPAGE.jsp");
		
	}
	else
	
		out.println("<script>alert('not registered');window.location.href='REGISTRATION.jsp';</script>");
	
		con.close();
}
	catch(Exception e) 
{ 
		out.println(e);
		}
	

%>
</body>
</html>