<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.coolStudio.supTrip.dao.DaoFactory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Profile</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Profile <span>see and edit your personal informations</span></h1>
		<main>
			<%=DaoFactory.getUserDao().oneById(172012).getName()%>
			<p><%=request.getSession().getAttribute("idBooster")%></p>
			<p>Need DB stuff</p>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>