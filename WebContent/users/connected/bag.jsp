<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.entity.AvailableTrip" %>
<%@ page import="io.infinityCode.supTrip.entity.Campus" %>
<%@ page import="java.util.List" %>
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
		<% if(request.getSession().getAttribute("reservingTrips") == null || ((List<AvailableTrip>)request.getSession().getAttribute("reservingTrips")).size() < 1){%>
			<p>Your bag is empty.</p>
		  <% }else{ List<AvailableTrip> Trips = (List<AvailableTrip>) request.getSession().getAttribute("reservingTrips"); int i = 0; %>
		
			<p>Now that you've made your choices regarding travel that you want to perform, you must validate it to confirm your reservation.</p>
			
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
					<td class="TDFour"><a class="button buttonBig cancel" href="/SupTrip/connected/bag?r=<%=(i-1)%>">Remove trip</a></td>
				</tr>
		  		<% }%>
			</table>
			<br><br>
			<a style="max-width: 180px;" class="button buttonBig addBag" href="/SupTrip/connected/confirmation">Confirm my order</a>
			
		  <% }%>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>