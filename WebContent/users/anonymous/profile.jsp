<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Profile</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<main>
			<p><%=request.getSession().getAttribute("id")%></p>
			<p>Need DB stuff</p>
		</main>

		<footer>
			<p>Copyright © SUPTRIP Team &amp; SUPINFO 2015. All rights reserved - <a href="#">More about us</a></p>
		</footer>

	</body>
</html>