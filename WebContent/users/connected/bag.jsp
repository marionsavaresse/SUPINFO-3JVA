<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Bag</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Bag <span>blablabla</span></h1>
		<main>
			<p><%=request.getSession().getAttribute("id")%></p>
			<p>Bag Page</p>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>