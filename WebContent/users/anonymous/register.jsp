<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Register</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Register <span>the last step to see our deals</span></h1>
		<main>
			<form action="/SupTrip/register" method="post">
				<label for="idBooster">Username :</label>
				<input type="number" id="idBooster" name="idBooster" pattern="^[0-9]*$" required>
				<label for="password">Password :</label>
				<input type="password" id="password" name="password" required>
				<label for="passwordConf">Password Confirmation:</label>
				<input type="password" id="passwordConf" name="passwordConf" required>
				<label for="firstName">First Name :</label>
				<input type="text" id="firstName" name="firstName" required>
				<label for="lastName">Last Name :</label>
				<input type="text" id="lastName" name="lastName" required>
				<label for="email">Email :</label>
				<input type="text" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" required>
				<label for="campusName">Campus Name :</label>
				<input type="text" id="campusName" name="campusName" required>
				<input type="submit">
			</form>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>