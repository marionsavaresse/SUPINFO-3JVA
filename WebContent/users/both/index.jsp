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

		<h1>Welcome <span>to SUPTRIP website</span></h1>
		<main> <style>main>p{margin: 25px auto}</style>
		  <% if(request.getSession().getAttribute("idBooster") == null){%>
			
			<h4>Welcome to SUPTRIP !</h4> 
			<p>This website is an interface allowing students of <b>SUPINFO International University</b> to book their travel between the campus world. You are welcome to login or register a new account in order to access our offers.</p>
			
			<table id="homeTable">
				<tr>
					<td class="homeTDLeft">Number of registered users</td>
					<td class="homeTDRight"><span class="blueChip">4</span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of destinations</td>
					<td class="homeTDRight"><span class="blueChip">39</span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of possible travels</td>
					<td class="homeTDRight"><span class="blueChip">1521</span></td>
				</tr>	
			</table>
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