<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Order History</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Order History <span>See and download an history of all your orders</span></h1>
		<main> 
			
			<table id="homeTable connected">
				<tr>
					<th>Order #12</th>
					<th></th>
					<th class="history"><input class="button send-button" id="envoyer" type="submit" value="DOWLOAD PDF"></th>
					<th id="null"></th>
				</tr>
				<tr class="dark">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 1</span></td>
				</tr>	
				<tr class="light">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 2</span></td>
				</tr>		
			</table>
			
			<table id="homeTable connected">
				<tr>
					<th>Order #3</th>
					<th></th>
					<th class="history"><input class="button send-button" id="envoyer" type="submit" value="DOWLOAD PDF"></th>
					<th id="null"></th>
				</tr>
				<tr class="dark">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 1</span></td>
				</tr>	
				<tr class="light">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 2</span></td>
				</tr>		
			</table>
			
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>