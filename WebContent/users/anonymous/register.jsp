<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<%@ page import="io.infinityCode.supTrip.entity.Campus" %>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Register</title>

		<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Register <span>the last step to see our deals</span></h1>
		<main>
		
			<p> Only SUPINFO International University students can register on our website and take advantage of our travel offers. Thank you to enter your personal information and fill out the form below. </p>
			<br>
			<p> All fields are   in order to sign up. </p>
			
			<form action="/SupTrip/register" id="registerForm" method="post" onSubmit="return validForm()">
				<table>
	            	<tr>
                  		<td>
							<input class="input long" type="text" id="lastName" name="lastName" placeholder="Last name"  >
							<span id="spanLastName">							
								<% String errorMsgLastName = (String)request.getAttribute("errorMsgLastName");			          
				               		if (errorMsgLastName == null) {	
				               			errorMsgLastName = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("lastName").className = document.getElementById("lastName").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgLastName);
				               		}
			               		%>
							</span>
							
					 	</td>
						<td>
							<input class="input long" type="text" id="firstName" name="firstName" placeholder="First name"  >
							<span id="spanFirstName">							
								<% String errorMsgFirstName = (String)request.getAttribute("errorMsgFirstName");			          
				               		if (errorMsgFirstName == null) {	
				               			errorMsgFirstName = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("firstName").className = document.getElementById("firstName").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgFirstName);
				               		}
			               		%>
							</span>
						</td>
					</tr>
					<tr>
						<td>	
							<input class="input long" type="text" id="idBooster" name="idBooster" pattern="^[0-9]*$" placeholder="ID Booster"  >
							<span id="spanIDBooster">							
								<% String errorMsgIDBooster = (String)request.getAttribute("errorMsgIDBooster");			          
				               		if (errorMsgIDBooster == null) {	
				               			errorMsgIDBooster = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("idBooster").className = document.getElementById("idBooster").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgIDBooster);
				               		}
			               		%>
							</span>
						</td>
						<td>
							<input class="input long" type="email" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" placeholder="Email address"  >
							<span id="spanEmail">							
								<% String errorMsgEmail = (String)request.getAttribute("errorMsgEmail");			          
				               		if (errorMsgEmail == null) {	
				               			errorMsgEmail = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("email").className = document.getElementById("email").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgEmail);
				               		}
			               		%>
							</span>
						</td>
					</tr>
					<tr>
						<td>
							<% List<String> list = DaoFactory.getCampusDao().allCampusName(); %>
			               <select class="dropdown long" id="campusName" name="campusName"  >
			        			<option value="" disabled selected>Campus name</option>
			        			<%for(int i=0; i < list.size(); ++i){%>
			           				 <option><%=list.get(i)%></option>
		     					<% } %>
		      			   </select>
		      			   <span id="spanCampusName">							
								<% String errorMsgCampusName = (String)request.getAttribute("errorMsgCampusName");			          
				               		if (errorMsgCampusName == null) {	
				               			errorMsgCampusName = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("campusName").className = document.getElementById("campusName").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgCampusName);
				               		}
			               		%>
							</span>
						</td>
						<td>
							<select class="dropdown long" id="currentSchoolYear" name="currentSchoolYear"  >
				               	<option value="" disabled selected>Current school year</option>
				               	<option>A.Sc. 1</option>
				               	<option>A.Sc. 2</option>
				               	<option>B.Sc.</option>
				               	<option>M.Sc. 1</option>
				               	<option>M.Sc. 2</option>
		               		</select>
		               		<span id="spanCurrentSchoolYear">							
								<% String errorMsgCurrentSchoolYear = (String)request.getAttribute("errorMsgCurrentSchoolYear");			          
				               		if (errorMsgCurrentSchoolYear == null) {	
				               			errorMsgCurrentSchoolYear = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("currentSchoolYear").className = document.getElementById("currentSchoolYear").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgCurrentSchoolYear);
				               		}
			               		%>
							</span>
						</td>
					</tr>
					<tr>
						<td>
							<input class="input long" type="password" id="password pwd" name="password" placeholder="Password"  >
							<span id="spanPassword">							
								<% String errorMsgPassword = (String)request.getAttribute("errorMsgPassword");			          
				               		if (errorMsgPassword == null) {	
				               			errorMsgPassword = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
					           		 document.getElementById("password pwd").className = document.getElementById("password pwd").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgPassword);
				               		}
			               		%>
							</span>
       					</td>
						<td>
							<input class="input long" type="password" id="passwordConf" name="passwordConf" placeholder="Password confirmation"  >
							<span id="spanPasswordConf">							
								<% String errorMsgPasswordConf = (String)request.getAttribute("errorMsgPasswordConf");			          
				               		if (errorMsgPasswordConf == null) {	
				               			errorMsgPasswordConf = "";
				               		}
				               		else { 
				               	%>             		
					            <script>
				               		document.getElementById("passwordConf").className = document.getElementById("passwordConf").className + " wrong";
				               	</script>
					            <% 	
				               			out.println(errorMsgPasswordConf);
				               		}
			               		%>
							</span>
	       				</td>	
					</tr>
				</table>
				<br>
				<input class="button buttonBig" type="submit" id="registerButton" value="Create my account">
			</form>
		</main>

		<%@include file="../both/footer.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
	</body>
</html>