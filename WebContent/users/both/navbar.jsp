<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<form action="login" id="loginForm" method=post></form>
		
		<section id="header-container">
	    	<div id="grey-strip"></div>
			<header>
				<img src="logoSupTrip.png" alt="LogoSupTrip" id="logo"/>
				<nav>
				    <ul>
				        <li><a href="/SupTrip/index">Home</a></li>
				        <% if(request.getSession().getAttribute("id") == null){%>
				        <li><a href="/SupTrip/contact">Contact</a></li>
				        <% }else{%>
						<li><a href="/SupTrip/profile">Profile</a></li>
						<li><a href="/SupTrip/bag">
							<p>Bag</p>
							<p>0</p>
						</a></li>
						<li><a href="/SupTrip/contact">Contact</a></li>
				<div>
					<%=request.getSession().getAttribute("id")%>
					<br>Name
				</div>
				<a href="/SupTrip/logout">Sign out</a>
			  <% }%>
				    </ul>
			 	</nav>
	
				<div id="login-inputs">
					<input type=text id="username" class="header-input" name="idBooster" form="loginForm" placeholder="ID Booster">
					<input type=password id="password" class="header-input" name="password" form="loginForm" placeholder="Password">
				</div>
				
				<div id="login-buttons">
					<input type=submit value="Sign in" form="loginForm" class="button" id="buttonLogin">
					<a class="button" id="buttonRegister" href="/SupTrip/register">Register</a>
				</div>
				
			</header>
		</section>	
		<div id="header-background"></div>