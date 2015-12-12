<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - About Us</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/my.css" />
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<h1>About Us <span>who's behind this project ?</span></h1>
		<main>
		
			<div id="compagny">
				<img src="res/img/aboutus/ICLogo.png" id="ICLogo">
				<h3>INFINITY CODE</h3>
				<p>Co-founded in 2005, Infinity Code is a company specialized in software development for designing, implementing, and managing systems that directly contribute to revenue and business success. We help our customers to adopt technologies to advance innovation and increase agility. Our skilled technical team works as an integrated extension of our customer’s organizations. And we love unicorns.</p>
			</div>
			
			<div class="column" id="one">
				<img class="profilePicture" id="marion">
				<h3>Marion Savaresse</h3>
				<p>Marion focuses on the Web and all its components. Design, web, web apps, etc. She is currently trying to recreate a pokedex for humans, without success yet.</p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="mike">
				<h3>Mike Roux</h3>
				<p>Mike loves the C / C ++. This language of particular interest for more than three years. He is currently under professional contract with K-Eplison, the company of his dreams.</p>
			</div>
		
			<div class="column" id="one">
				<img class="profilePicture" id="hugo">
				<h3>Hugo Tardiou</h3>
				<p>He is interested mainly in data structure and projects using new technologies. He wishes to continue his career in the USA on the AutoIT language .</p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="adrien">
				<h3>Adrien Tanaka</h3>
				<p>After two years at Avignon, he continue studying at Supinfo Nice. He specializes in high-level languages, databases and Amazon API to automate buying unneeded things.</p>
			</div>	
		
			
		</main>

		<%@include file="../both/footer.jsp" %>
	
	</body>
</html>