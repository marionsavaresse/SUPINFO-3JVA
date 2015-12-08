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
				<p>Nulla non libero sagittis, congue turpis vel, sagittis nulla. Ut egestas nisi et lacus tempus imperdiet. Nulla vitae neque in erat convallis suscipit vitae eget magna. Vestibulum semper ante ut sollicitudin rutrum. Etiam a facilisis metus. Sed facilisis libero non imperdiet molestie. Donec ex risus, convallis ac est vel, efficitur aliquet diam. </p>
			</div>
			
			<div class="column" id="one">
				<img class="profilePicture" id="marion">
				<h3>Marion Savaresse</h3>
				<p>Designer & developer multi-plateforme, elle continue ses études afin de toujours s'améliorer, tout en relevant les missions de développement proposée à son équipe. </p>
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