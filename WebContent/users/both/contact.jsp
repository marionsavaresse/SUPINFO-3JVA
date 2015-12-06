<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Contact</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<main> <style>main>div{margin: 25px auto}</style>
			<div>
				<img alt="Photo de Marion">
				<p>Marion SAVARESSE</p>
				<p>Directrice Marketing et Designer</p>
				<a href="mailto:170754@supinfo.com">Envoyer un compliment</a>
			</div>

			<div>
				<img alt="Photo de Hugo">
				<p>Hugo TARDIOU</p>
				<p>Responsable Technique et Developpement</p>
				<a href="mailto:172012@supinfo.com">Envoyer un super message</a>
			</div>

			<div>
				<img alt="Photo de Mike">
				<p>Mike ROUX</p>
				<p>Quality Manager</p>
				<a href="mailto:174595@supinfo.com">Envoyez des grossièretés</a>
			</div>

			<div>
				<img alt="Photo d'Adrien">
				<p>Adrien-Charles BUFFET</p>
				<p>Database Administrator and Community Manager</p>
				<a href="mailto:208851@supinfo.com">Envoyer une invitation au restaurant</a>
			</div>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>