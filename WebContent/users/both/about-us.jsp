<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - About Us</title>

		<link rel=stylesheet type=text/css href="my.css">
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
				<p>Developer & designer, she continues her studies while making some external missions, hoping to always learning more. Always motivated for some challenge.</p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="mike">
				<h3>Mike Roux</h3>
				<p>When I started to do softwares, I became inlove of the Java language. So, I continue to this track and do Java-code everyday and every nights.</p>
			</div>
		
			<div class="column" id="one">
				<img class="profilePicture" id="hugo">
				<h3>Hugo Tardiou</h3>
				<p>As a student, I lived two years in Cambridge to graduate with a double-diploma in IT. I also learnt the Ook language in third year. </p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="adrien">
				<h3>Adrien Tanaka</h3>
				<p>Insterested in Software development since I was a kid, I recently moved up to south california to meet people that make the world move on.</p>
			</div>	
		
			
		</main>

		<%@include file="../both/footer.jsp" %>
	
	</body>
</html>