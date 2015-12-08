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
		<main> <style>main>div{margin: 25px auto}</style>
		
			<div id="compagny">
				<img src="res/img/aboutus/ICLogo.png" id="ICLogo">
				<h3>INFINITY CODE</h3>
				<p>Co-founded in 2005, Infinity Code is a company specialized in software development for designing, implementing, and managing systems that directly contribute to revenue and business success. We help our customers to adopt technologies to advance innovation and increase agility. Our skilled technical team works as an integrated extension of our customer’s organizations. </p>
			</div>
			
			<div class="column" id="one">
				<img class="profilePicture" id="marion">
				<h3>Marion Savaresse</h3>
				<p>Developer & designer, she continues her studies while making some external missions, hoping to always learning more. Always motivated for some challenge.</p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="mike">
				<h3>Mike Roux</h3>
				<p>Nulla non libero sagittis, congue turpis vel, sagittis nulla. Ut egestas nisi et lacus tempus imperdiet. Nulla vitae neque in erat convallis suscipit vita. </p>
			</div>
		
			<div class="column" id="one">
				<img class="profilePicture" id="hugo">
				<h3>Hugo Tardiou</h3>
				<p>Nulla non libero sagittis, congue turpis vel, sagittis nulla. Ut egestas nisi et lacus tempus imperdiet. Nulla vitae neque in erat convallis suscipit vita. </p>
			</div>
			
			<div class="column" id="two">
				<img class="profilePicture" id="adrien">
				<h3>Adrien Tanaka</h3>
				<p>Nulla non libero sagittis, congue turpis vel, sagittis nulla. Ut egestas nisi et lacus tempus imperdiet. Nulla vitae neque in erat convallis suscipit vita. </p>
			</div>	
		
			
		</main>

		<%@include file="../both/footer.jsp" %>
	
	</body>
</html>