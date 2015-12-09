<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Order Confirmation</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Order Confirmation <span>Order number #12</span></h1>
		<main> 
		
			<p>Thank you for your order. You will find below a summary of the order you just pass. It is also possible to export your proof of reservation in PDF format.</p>
			
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
					<td class="TDFour"><span class="quantity">QUANTITY : 1</span></td>
				</tr>	
				<tr class="light">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 2</span></td>
				</tr>		
			</table>
			<br><br>
			<input class="button buttonBig" id="envoyer" type="submit" value="DOWLOAD PDF">
			
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>