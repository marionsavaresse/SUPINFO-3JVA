<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<header>
			<ul>
				<li><a href="/SupTrip/login">Home</a></li>
				<li><a href="/SupTrip/contact">Contact</a></li>
			</ul>
		  <% if(request.getSession().getAttribute("id") == null){%>
			<form action="login" id="loginForm" method=post>
				<label for="username">Username :</label>
				<input type=text id="username" name="idBooster">
				<label for="password">Password :</label>
				<input type=text id="password" name="password">
				<input type=submit>
				<label style="margin-right:4px">or</label><a href="/SupTrip/register">register</a>
			</form>
		  <% }else{%>
			<a href="/SupTrip/profile">Profile</a>
			<a href="/SupTrip/logout">Logout</a>
		  <% }%>
		</header>