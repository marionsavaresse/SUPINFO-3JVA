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
			<p>Seuls les étudiants de SUPINFO International Univeristy peuvent créer un compte sur notre site et profiter de nos offres de voyages. Merci de vous munir de vos informations personnelles et de remplir le formulaire ci-dessous.</p>
			<br>
			<p>Tous les champs sont obligatoires afin de pouvoir s’inscrire.</p>
			
			<form action="/SupTrip/register" method="post" id="registerForm">
				<input class="input long wrong" type="text" id="lastName" name="lastName" placeholder="Last name" required>
				<span>You need to specify your last name.</span>
				<input class="input long" type="text" id="firstName" name="firstName" placeholder="First name" required>
				<input class="input long" type="text" id="idBooster" name="idBooster" pattern="^[0-9]*$" placeholder="ID Booster" required>
				<input class="input long" type="email" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" placeholder="Email address" required>
				<input class="input long" type="password" id="password" name="password" placeholder="Password" required>
				<input class="input long" type="password" id="passwordConf" name="passwordConf" placeholder="Password confirmation" required>
				<input class="input long" type="text" id="campusName" name="campusName" placeholder="Campus name" required>
				<br>
				<input class="button send-button" type="submit" value="Create my account">
			</form>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>