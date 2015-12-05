<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Index</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>
		<main>
		 <% if(request.getSession().getAttribute("id") == null){%>
			<p>Please login to view our catalogue :D</p>
		 <% }else{%>
			<form action="/SupTrip/bag" method="post">
				<button type="submit" value="Trip1" name="idk" >Trip1</button>
				<button type="submit" value="Trip2" name="idk" >Trip2</button>
				<button type="submit" value="Trip3" name="idk" >Trip3</button>
			</form>
		 <% }%>
		</main>

		<footer>
			<p>Copyright © SUPTRIP Team &amp; SUPINFO 2015. All rights reserved - <a href="#">More about us</a></p>
		</footer>

	</body>
</html>