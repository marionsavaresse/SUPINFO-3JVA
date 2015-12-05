<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Login</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<main>
			<form action="login" id="loginForm" method=post>
				<label for="username">Username :</label>
				<input type=text id="username" name="idBooster">
				<label for="password">Password :</label>
				<input type=password id="password" name="password">
				<input type=submit>
				<label style="margin-right:4px">or</label><a href="/SupTrip/register">register</a>
			</form>
		</main>

		<footer>
			<p>Copyright © SUPTRIP Team &amp; SUPINFO 2015. All rights reserved - <a href="#">More about us</a></p>
		</footer>

	</body>
</html>