<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Home</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/my.css" />
		<script>
			function getAjaxReq()
			{
				var xhr = null;
				if(window.XMLHttpRequest || window.ActiveXObject)
				{
					if(window.ActiveXObject)
					{
						try{ xhr = new ActiveXObject("Msxml2.XMLHTTP"); }catch(e){ xhr = new ActiveXObject("Microsoft.XMLHTTP"); }
					}
					else xhr = new XMLHttpRequest();
				}
				else alert("Votre navigateur ne supporte pas l'objet XMLHTTPRequest...");
				return xhr;
			};

			function search(kind)
			{
				var data,
					baseURL = "/SupTrip/API/travels/";
				console.log(kind);
				console.log(kind == '');
				switch(kind)
				{
					case '': data = ''; break;
					case 'fromto': data = encodeURIComponent(prompt("Departure : ")) + "/" + encodeURIComponent(prompt("Destination : ")); break;
					default: data = encodeURIComponent(kind);
				}



				var xhr = getAjaxReq();

				xhr.onreadystatechange = function()
				{
					if(xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0))
						TRAVELS = JSON.parse(xhr.responseText);
					else if(xhr.readyState == 4 && xhr.status == 500)
						alert("This campus doesn't exist ! :(");
					
					if(null != TRAVELS)
						printTravels(1);
				};

				xhr.open("GET", baseURL + data, true);
				xhr.send(null);
			}
			
			TRAVELS = null;
			tripListTemplate = null;
			tripListAdrressContent = null;
			activePage = null;
			activeMax = 0;
			function init()
			{
				tripListTemplate = document.getElementById("homeTable connected").tBodies[0].children[0].cloneNode(true);
				tripListAdrressContent = document.getElementById("homeTable connected").tBodies[0].children[1].children[0].children[0].cloneNode(true);
				search("");
				document.getElementById("homeTable connected").tBodies[0].style.display = '';
				document.getElementById("homeTable connected").tBodies[1].style.display = 'none';
			}
			
			function fillAddressTd(td, name, address)
			{
				temp = tripListAdrressContent.cloneNode(true);
				temp.innerHTML = address;
				td.innerHTML = name;
				td.appendChild(temp);
			}
			
			function printTravels(page, howMany)
			{
				if('undefined' === typeof(howMany)) howMany = 10;
				container = document.getElementById("homeTable connected").tBodies[0];
				
				container.innerHTML = "";
				activePage = page;
				activeMax = Math.ceil(TRAVELS.length/howMany);
				
				for(var i = (page-1)*howMany, end = page*howMany, max = TRAVELS.length; i < max && i < end; i++)
				{
					aTravel = TRAVELS[i];
					aTrip = tripListTemplate.cloneNode(true);
					aTrip.className += (i%2 ? " light" : " dark" );
					fillAddressTd(aTrip.children[0], aTravel.departure.campusName, aTravel.departure.address);
					fillAddressTd(aTrip.children[2], aTravel.arrival.campusName, aTravel.arrival.address);
					temp = aTrip.children[3].children[0];
					temp.href="/SupTrip/connected/bag?d=" + aTravel.departure.id + "&a=" + aTravel.arrival.id;
					container.appendChild(aTrip);
				}
				
				pagination();
			}

			function pagination()
			{
				pg = document.getElementById("pagination");
				pg.innerHTML = "";
				
				if(activeMax < 7)
				{
					for(var i = 1; i < activePage; i++)
						pg.innerHTML += (i==activePage ? '<span class="blueChip">' : "<span>") + i + "</span> - ";
					pg.innerHTML += (i==activePage ? '<span class="blueChip">' : "<span>") + i + "</span>";
				}
				else
				{
					switch(activePage)
					{
						case 1: pg.innerHTML = `<span class="blueChip">1</span> - <span>2</span> - .. - <span>`+activeMax+`</span>`; break;
						case 2: pg.innerHTML = `<span>1</span> - <span class="blueChip">2</span> - <span>3</span> - .. - <span>`+activeMax+`</span>`; break;
						case (activeMax-1): pg.innerHTML = `<span>1</span> - .. - <span>`+(activePage-1)+`</span> - <span class="blueChip">`+(activeMax-1)+`</span> - <span>`+activeMax+`</span>`; break;
						case activeMax: pg.innerHTML = `<span>1</span> - .. - <span>`+(activeMax-1)+`</span> - <span class="blueChip">`+activeMax+`</span>`; break;
						default: pg.innerHTML = `<span>1</span> - .. - <span>`+(activePage-1)+`</span> - <span class="blueChip">`+activePage+`</span> - <span>`+(activePage+1)+`</span> - .. - <span>`+activeMax+`</span>`; 
					}
				}
				for(i = 0, stop = pg.children.length; i < stop; i++)
					pg.children[i].addEventListener("click", function(){printTravels(parseInt(this.innerHTML));});
			}
		</script>
	</head>
	<body>
		<%@include file="navbar.jsp" %>

		<% if(request.getSession().getAttribute("idBooster") == null){%>
		<h1>Welcome <span>to SUPTRIP website</span></h1>
		<main> <style>main>p{margin: 25px auto}</style>
			
			<h4>Welcome to SUPTRIP !</h4> 
			<p>This website is an interface allowing students of <b>SUPINFO International University</b> to book their travel between the campus world. You are welcome to login or register a new account in order to access our offers.</p>
			
			<% Long travelsCount = DaoFactory.getCampusDao().countCampuses(); %>
			<table id="homeTable">
				<tr>
					<td class="homeTDLeft">Number of registered users</td>
					<td class="homeTDRight"><span class="blueChip"><%=DaoFactory.getUserDao().countUsers()%></span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of destinations</td>
					<td class="homeTDRight"><span class="blueChip"><%=travelsCount%></span></td>
				</tr>	
				<tr>
					<td class="homeTDLeft">Number of possible travels</td>
					<td class="homeTDRight"><span class="blueChip"><%=travelsCount*(travelsCount-1)%></span></td>
				</tr>	
			</table>
		  <% }else{%>
			<h1>
				Home 
				<span>WHERE DO YOU WANT TO GO ?</span>
				<form id="searchBar" action="#" onsubmit="search(this.campus.value); return false;">
					<input class="input" type="text" name="campus" placeholder="Search a campus">
					<input class="button buttonBig" id="envoyer" type="submit" value="Go">
				</form>
			</h1>
				
			<main>
		
			<p>Welcome to SUPTRIP website, an interface allowing students of SUPINFO International University to book their travel between the campus world.</p>
			
			<table id="homeTable connected">
				<thead>
					<tr>
						<th>Departure</th>
						<th></th>
						<th>Arrival</th>
						<th id="null"></th>
					</tr>
				</thead>
				<tbody style="display: none">
					<tr class="dark">
	                    <td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
	                    <td class="TDTwo">→</td>
	                    <td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
	                    <td class="TDFour"><a class="button buttonBig addBag" href="#">Add to bag</a></td>
	                </tr>    
	                <tr class="light">
	                    <td class="TDOne">Campus de Paris<span class="address">33 Avenue du Maine, Tour Montparnasse, 40e étage <br>75015 Paris</span></td>
	                    <td class="TDTwo">→</td>
	                    <td class="TDThree">Campus de Bordeaux<span class="address">14 Cours Saint-Louis<br>33300 Bordeaux</span></td>
	                    <td class="TDFour"><a class="button buttonBig addBag" href="#">Add to bag</a></td>
	                </tr>
				</tbody>
				<tbody>
					<tr><td colspan=3>Loading available travels, please wait ...</td></tr>
				</tbody>
			</table>
			
			<div id="pagination">
				<span class="blueChip">1</span>- 2 - ... - 120
			</div>
			<script>init()</script>
			
		  <% }%>
		</main>

		<%@include file="../both/footer.jsp" %>
		
		
	</body>
</html>