<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Contact</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<h1>Contact <span>we are only a click away</span></h1>
		<main> <style>main>div{margin: 25px auto}</style>
		
		
			<div id="map"></div>
			
			<div class="column" id="one">
				<p>We always try to respond as quickly as possible to emails. So you can generally have a response within 24 hours.</p>
				
				<div id="contact-infos">
					<h3>SUPTRIP Team - Infinity Code</h3>

					<b><u>Address</u></b></br>
					21 Boulevard François</br>
					Grosso, 06000 Nice</br></br>

					<b><u>Email address</u></b></br>
					infinitycode@gmail.com
				</div>
			
			</div>
			
			<div class="column" id="two">
				<form id="mel" action="javascript: sendMsg(document.getElementById('mel'))">
					<input class="input" type="text" name= "lastName" placeholder="Last name" required>
					<input class="input" type="text" name= "firstName" placeholder="First Name" required>
					</br>

					<input class="input" type="email" name= "email" placeholder="Email address" required>
					<input class="input" type="text" name= "idBooster" placeholder="ID Booster" required>
					</br>

					<textarea class="contact" placeholder="Message" name="body" form="mel" required></textarea>
					</br>
					
					<input class="button send-button" id="envoyer" type="submit" value="Send">
				</form>
			</div>
		
		
		</main>

		<%@include file="../both/footer.jsp" %>
		
    <script>
    	function sendMsg(form)
    	{
    		console.log(form);
    		window.location.href = "mailto:suptripteam@gmail.com?subject=["+form.idBooster.value+"] "+form.lastName.value+" "+form.firstName.value+"&body="+form.body.value+"\n\r\n\rSent by "+form.email.value; 
    	}
    
		var map;
		var myLatLng = {lat: 43.6958795, lng: 7.251661499999955};
		
		function initMap() {
			
			  map = new google.maps.Map(document.getElementById('map'), {
			    center: myLatLng,
			    zoom: 15
			  });
			  
			 var marker = new google.maps.Marker({
				position: myLatLng,
				map: map,
				title: 'Infinity Code'
			 });
			 
			 var contentString = '<b>Infinity Code</b></br>21 Boulevard François Grosso,<br>06000 Nice';
	
		  	var infowindow = new google.maps.InfoWindow({
		    content: contentString
		  	});

		    infowindow.open(map, marker);
		    marker.addListener('click', function() {
		        infowindow.open(map, marker);
		      });
		    
		 }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZfdqbq-7wuj_Fzoa7ltz5I3nnM_C0n30&callback=initMap"
        async defer></script>
	
	</body>
</html>