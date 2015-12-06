<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%! public String printClassIfActive(HttpServletRequest req, String requiredPageName){ return ( req.getRequestURI().contains(requiredPageName) ) ? "class=\"active\"" : ""; } %>
		<form action="login" id="loginForm" method=post></form>
		
		<section id="header-container">
	    	<div id="grey-strip"></div>
			<header>
				<img src="logoSupTrip.png" alt="LogoSupTrip" id="logo"/>
				<nav>
				    <ul>
				        <li><a href="/SupTrip/index" <%=printClassIfActive(request, "index")%>>Home</a></li>
				      <% if(request.getSession().getAttribute("id") != null){%>
						<li><a href="/SupTrip/profile" <%=printClassIfActive(request, "profile")%>>Profile</a></li>
						<li><a href="/SupTrip/bag" <%=printClassIfActive(request, "bag")%>>Bag<span id="quantity">0</span></a></li>
			 		  <% }%>
				        <li><a href="/SupTrip/contact" <%=printClassIfActive(request, "contact")%>>Contact</a></li>
				    </ul>
			 	</nav>

		      <% if(request.getSession().getAttribute("id") == null){%>
				<div id="login-inputs">
					<input type=text id="username" class="header-input" name="idBooster" form="loginForm" placeholder="ID Booster">
					<input type=password id="password" class="header-input" name="password" form="loginForm" placeholder="Password">
				</div>
				
				<div id="login-buttons">
					<input type=submit value="Sign in" form="loginForm" class="button" id="buttonLogin">
					<a class="button" id="buttonRegister" href="/SupTrip/register">Register</a>
				</div>
		      <% }else{%>
				<div id="login-infos">
					Welcome<br>
					<b>ID <%=request.getSession().getAttribute("id")%></b>
				</div>
				<a href="/SupTrip/logout" class="button" id="buttonLogout">Sign out</a>
	 		  <% }%>
			</header>
		</section>	
		<div id="header-background"></div>