<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Home</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/my.css" />
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<% if(request.getSession().getAttribute("idBooster") == null){%>
		<h1>Welcome <span>to SUPTRIP website</span></h1>
		<main> <style>main>p{margin: 25px auto}</style>
			
			<h4>Welcome to SUPTRIP !</h4> 
			<p>This website is an interface allowing students of <b>SUPINFO International University</b> to book their travel between the campus world. You are welcome to login or register a new account in order to access our offers.</p>
			
			<% Long travelsCount = DaoFactory.getCampusDao().countCampuses(); %>
			<table id="homeTable">
				<tr>
					<td class="homeTDLeft">Number of registered users</td>
					<td class="homeTDRight"><span class="blueChip"><%=DaoFactory.getUserDao().countUsers()%></span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of destinations</td>
					<td class="homeTDRight"><span class="blueChip"><%=travelsCount%></span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of possible travels</td>
					<td class="homeTDRight"><span class="blueChip"><%=travelsCount*(travelsCount-1)%></span></td>
				</tr>	
			</table>
		  <% }else{%>
			<h1>
				Home 
				<span>WHERE DO YOU WANT TO GO ?</span>
				<div id="searchBar">
					<input class="input" type="text" name="search" placeholder="Search a campus">
					<input class="button buttonBig" id="envoyer" type="submit" value="Go">
				</div>
			</h1>
				
			<main>
		
			<p>Welcome to SUPTRIP website, an interface allowing students of SUPINFO International University to book their travel between the campus world.</p>
			
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
					<td class="TDFour"><a class="button buttonBig addBag" href="#">Add to bag</a></td>
				</tr>	
				<tr class="light">
					<td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
					<td class="TDTwo">→</td>
					<td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
					<td class="TDFour"><a class="button buttonBig addBag" href="#">Add to bag</a></td>
				</tr>		
			</table>
			
			<div id="pagination">
				<span class="blueChip">1</span>- 2 - ... - 120 - 121
			</div>
			
		  <% }%>
		</main>

		<%@include file="../both/footer.jsp" %>
		
		
	</body>
</html>