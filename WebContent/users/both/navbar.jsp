<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.coolStudio.supTrip.dao.DaoFactory" %>
<%! public String printClassIfActive(HttpServletRequest req, String requiredPageName){ return ( req.getRequestURI().contains(requiredPageName) ) ? "class=\"active\"" : ""; } %>
		<form action="login" id="loginForm" method=post></form>
		
		<section id="header-container">
	    	<div id="grey-strip"></div>
			<header>
				<a href="/SupTrip/index"><img src="logoSupTrip.png" alt="LogoSupTrip" id="logo"/></a>
				<nav>
				    <ul>
				        <li><a href="/SupTrip/index" <%=printClassIfActive(request, "index")%>>Home</a></li>
				      <% if(request.getSession().getAttribute("idBooster") != null){%>
						<li><a href="/SupTrip/profile" <%=printClassIfActive(request, "profile")%>>Profile</a></li>
						<li><a href="/SupTrip/bag" <%=printClassIfActive(request, "bag")%>>Bag<span id="quantity">0</span></a></li>
			 		  <% }%>
				        <li><a href="/SupTrip/contact" <%=printClassIfActive(request, "contact")%>>Contact</a></li>
				    </ul>
			 	</nav>

		      <% if(request.getSession().getAttribute("idBooster") == null){%>
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
					<b><%=request.getSession().getAttribute("name").toString().substring(0, 1)%>
					. <%=request.getSession().getAttribute("familyName")%></b>
				 </div>
				<a href="/SupTrip/logout" class="button" id="buttonLogout">Sign out</a>
	 		  <% }%>
			</header>
		</section>	
		<div id="header-background"></div>