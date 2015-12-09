<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<%@ page import="io.infinityCode.supTrip.bo.Campus" %>
<%@ page import="java.util.ListIterator"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Register</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Register <span>the last step to see our deals</span></h1>
		<main>
		
			<p>Seuls les étudiants de SUPINFO International Univeristy peuvent créer un compte sur notre site et profiter de nos offres de voyages. Merci de vous munir de vos informations personnelles et de remplir le formulaire ci-dessous.</p>
			<p>Tous les champs sont obligatoires afin de pouvoir s’inscrire.</p>
			
			<form action="/SupTrip/register" method="post" id="registerForm">
				<table>
	            	<tr>
                  		<td>
							<input class="input long wrong" type="text" id="lastName" name="lastName" placeholder="Last name" required>
							<span>You need to specify your last name.</span>
					 	</td>
						<td>
							<input class="input long" type="text" id="firstName" name="firstName" placeholder="First name" required>
						</td>
					</tr>
					<tr>
						<td>	
							<input class="input long" type="text" id="idBooster" name="idBooster" pattern="^[0-9]*$" placeholder="ID Booster" required>
						</td>
						<td>
							<input class="input long" type="email" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" placeholder="Email address" required>
						</td>
					</tr>
					<tr>
						<td>
							<% ListIterator<Campus> list = DaoFactory.getCampusDao().all();%>
			               <select class="dropdown long"" type="text" id="campusName" name="campusName" placeholder="Campus name" required>
			        			<option value="" disabled selected>Campus name</option>
			        			<%while(list.hasNext()){%>
			           				 <option><%=list.next()%></option>
		     					<% } %>
		      			   </select>
						</td>
						<td>
							<select class="dropdown long" type="text" id="currentSchoolYear" name="currentSchoolYear" placeholder="B3" required>
				               	<option value="" disabled selected>Current school year</option>
				               	<option>B1</option>
				               	<option>B2</option>
				               	<option>B3</option>
				               	<option>M1</option>
				               	<option>M2</option>
		               		</select>
						</td>
					</tr>
					<tr>
						<td>
							<input class="input long" type="password" id="password" name="password" placeholder="Password" required>
						</td>
						<td>
							<input class="input long" type="password" id="passwordConf" name="passwordConf" placeholder="Password confirmation" required>
						</td>
					</tr>
				</table>
				<br>
				<input class="button send-button" type="submit" value="Create my account">
			</form>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>