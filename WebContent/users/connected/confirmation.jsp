<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.entity.AvailableTrip" %>
<%@ page import="io.infinityCode.supTrip.entity.Campus" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Order Confirmation</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/my.css" />
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Order Confirmation <span>Order number #12</span></h1>
		<main> 
		<% List<AvailableTrip> Trips = (List<AvailableTrip>) request.getSession().getAttribute("reservingTrips"); int i = 0; %>
			<p>Thank you for your order. You will find below a summary of the order you just pass.</p>
			
			<table id="homeTable connected">
				<tr>
					<th>Departure</th>
					<th></th>
					<th>Arrival</th>
					<th id="null"></th>
				</tr>
				<% for(AvailableTrip a : Trips){%>
				<tr class="<%=i++%2==0?"dark":"light"%>">
					<td class="TDOne"><%=a.departure.getCampusName()%><span class="address"><%=a.departure.getAddress()%></span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree"><%=a.arrival.getCampusName()%><span class="address"><%=a.arrival.getAddress()%></span></td>
					<td class="TDFour"><span class="quantity">QUANTITY : 1</span></td>
				</tr>
		  		<% }%>
			</table>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>