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
			<form action="/SupTrip/register" method="post">
				<label for="idBooster">Usernamee :</label>
				<input type="text" id="idBooster" name="idBooster" required="">
				<label for="password">Password :</label>
				<input type="password" id="password" name="password" required="">
				<label for="firstName">First Name :</label>
				<input type="text" id="firstName" name="firstName" required="">
				<label for="lastName">Last Name :</label>
				<input type="text" id="lastName" name="lastName" required="">
				<label for="email">Email :</label>
				<input type="text" id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="">
				<label for="campusName">Campus Name :</label>
				<input type="text" id="campusName" name="campusName" required="">
				<input type="submit">
			</form>
		</main>

		<footer>
			<p>Copyright © SUPTRIP Team &amp; SUPINFO 2015. All rights reserved - <a href="#">More about us</a></p>
		</footer>

	</body>
</html>