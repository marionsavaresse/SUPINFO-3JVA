<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.coolStudio.supTrip.dao.DaoFactory" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupCommerce - Profile</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<main>
			<%=DaoFactory.getUserDao().all()%>
			<p><%=request.getSession().getAttribute("id")%></p>
			<p>Need DB stuff</p>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>