<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<form action="login" id="loginForm" method=post></form>
		
		<header>
			<div>
				<img src="logo.png" alt="LogoSupTrip"/>
			</div>
			<a href="/SupTrip/index">HOME</a>
		  <% if(request.getSession().getAttribute("id") == null){%>
			<a href="/SupTrip/contact">CONTACT</a>

			<div>
				<input type=text id="username" name="idBooster" form="loginForm" placeholder="ID Booster">
				<input type=password id="password" name="password" form="loginForm" placeholder="Password">
			</div>
			<div>
				<input type=submit value="SIGN IN" form="loginForm">
				<a href="/SupTrip/register">REGISTER</a>
			</div>
		  <% }else{%>
			<a href="/SupTrip/profile">Profile</a>
			<a href="/SupTrip/bag">
				<p>Bag</p>
				<p>0</p>
			</a>
			<a href="/SupTrip/contact">Contact</a>
			<div>
				<%=request.getSession().getAttribute("id")%>
				<br>Name
			</div>
			<a href="/SupTrip/logout">SIGN OUT</a>
		  <% }%>
		</header>