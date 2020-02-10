<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN PAGE</title>

<style>
body
{
margin:0;
padding:0;
background-size:cover;
background position:centre;
font-family:sans-serif;

}
div{
width:450px;
padding:50px;
margin:auto;
font-size:20px;

}
input{
padding:10px;
width:400px;
}
.login-box{
width=320px;
height=420px;

top:50%;
left:50%;
transform:translate(-50%,_50%);
box-sizing:border-box;
}

</style>
</head>

<body background="img5.jpg";>

<%
if(null != session.getAttribute("theName"))
{
 response.sendRedirect("HOMEPAGE.jsp");
}

%>
<div class="login-box">
<img source="logo3.png" class="logo3">
</div>
<div>

<h2> LOGIN HERE</h2>
<form action="LOGINpro.jsp">
<input type="text" name="Username" placeholder="Please Enter The Username"/><br/><br/>
<input type="password" name="Password" placeholder="********"/><br/><br/>
<input type="submit" value="submit"><br/>
<br/>
<input type="reset" value="reset">
</form>
</div>

</body>
</html>