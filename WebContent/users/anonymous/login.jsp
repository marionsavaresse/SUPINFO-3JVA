<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.coolStudio.supTrip.dao.DaoFactory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Login</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Login <span>to access our offers</span></h1>
		<main>
			<form action="login" id="loginForm" method=post>
				<label for="username">Username :</label>
				<input type=text id="username" name="idBooster" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$">
				<label for="password">Password :</label>
				<input type=password id="password" name="password">
				<input type=submit>
				<label style="margin-right:4px">or</label><a href="/SupTrip/register">register</a>
			</form>
		<p>/!\<%--=DaoFactory.getAvailableTripDao().all()--%></p>

		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>