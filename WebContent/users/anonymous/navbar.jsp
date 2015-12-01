<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<style>
		#div1{
		border-bottom: thick solid #000000;
		padding-bottom: 50px;
		}
		form{
		display: inline;
		}
	</style>
</head>
<body>
	<header id="div1">
		<a href="/SupTrip/login">Home</a>
		<a href="/SupTrip/contact">Contact</a>
		<% if(request.getSession().getAttribute("id") == null){%>
		<form action="login" method=post>
			<label for="idBooster">Username :</label>
			<input type=text id="idBooster" name="idBooster">
			<label for="password">Password :</label>
			<input type=text id="password" name="userPwd">
			<input type=submit>
		</form>
		<a href="/SupTrip/users/anonymous/register.jsp">register</a>
		<% }else{%>
		<a href="/SupTrip/logout">logout</a>
		<% }%>
	</header>
</body>
</html>