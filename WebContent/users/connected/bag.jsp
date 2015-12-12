<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Bag</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/my.css" />
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Bag <span>See and confirm your travel choices</span></h1>
		<main> 
		
			<p>Now that you've made your choices regarding travel that you want to perform, you must validate it to confirm your reservation.</p>
			
			<table id="homeTable connected">
				<tr>
					<th>Departure</th>
					<th></th>
					<th>Arrival</th>
					<th id="null"></th>
				</tr>
				<tr class="dark">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><input class="button buttonBig cancel" id="addBag" type="submit" value="Remove trip"></td>
				</tr>	
				<tr class="light">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><input class="button buttonBig cancel" id="addBag" type="submit" value="Remove trip"></td>
				</tr>		
			</table>
			<br><br>
			<input class="button buttonBig" id="envoyer" type="submit" value="Confirm my order">
			
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>