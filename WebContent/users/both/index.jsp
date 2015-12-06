<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Home</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<h1>Welcome <span>to suptrip website</span></h1>
		<main> <style>main>p{margin: 25px auto}</style>
		  <% if(request.getSession().getAttribute("id") == null){%>
			
			<h4>Bienvenue sur le service en ligne SupTrip !</h4>
			<p>Le site vous propose de réserver l'une des 750+ offres de voyages
			entre tous les différents campus SUPINFO all around the world.
			</p>
			<p>Une fois enregistré sur la plateforme (que votre compte campus-booster a été confirmé), vous pouvez consulter la totalité des voyages disponibles.
			Les technologies innovantes choisies pour le developpement du projet vous permettent également de rechercher de façons rapide et efficace le
			voyage dont vous avez besoin.
			Organisez vos déplacements SCT en toute simplicité ! Connectez-vous, selectionner votre déplacement et recevez tous les détails relatif à votre déplacement.
			Blablabla ça sera super cool pour aller partager vos connaissances, ouééé.</p>
			<p>De plus, la puissance et la robustesse du Java vous permettrons d'utiliser un super API de la mort qui tue pour faire de super applications mobiles qui en jette grave
			et afficher les dernières offre sur votre site cv pour consolider a e-reputation !</p>
			<p>Franchement on rigole on rigole mais si on publiait un site comme ça, SUPINFO nous mettrait en une des magazines donc votez pour nous wesh.</p>
		  <% }else{%>
			<form action="/SupTrip/bag" method="post">
				<button type="submit" value="Trip1" name="idk" >Trip1</button>
				<button type="submit" value="Trip2" name="idk" >Trip2</button>
				<button type="submit" value="Trip3" name="idk" >Trip3</button>
			</form>
		  <% }%>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>