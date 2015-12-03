<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Register</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<main>
			<form action="login" method=post>
				<label for="username">Username :</label>
				<input type=text id="username" name="user[name]">
				<input type=submit>
			</form>
		</main>

		<footer>
			<p>Copyright © SUPTRIP Team &amp; SUPINFO 2015. All rights reserved - <a href="#">More about us</a></p>
		</footer>

	</body>
</html>