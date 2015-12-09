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
		
		<script>
            function validForm(form)
            {
            	var allSpans = document.getElementsByTagName('span');
            	
                for (i = 0; i < 8; i++)
               	{
               		if (allSpans[i].innerHTML != 'null')
               		{
               			console.log(allSpans[i]);
               			alert(allSpans[i].innerHTML);
               			allSpans[i].innerHTML="truc";
               			alert(allSpans[i].innerHTML);
               			allSpans[i].style.color = "red";
               			alert(allSpans[i].style.color);
               			allSpans[i].previousElementSibling.className = allSpans[i].previousElementSibling.className + " wrong";
               		}
               	}
            }
        </script>
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Register <span>the last step to see our deals</span></h1>
		<main>
		
			<p> Only SUPINFO International University students can register on our website and take advantage of our travel offers. Thank you to enter your personal information and fill out the form below. </p>
			<br>
			<p> All fields are required in order to sign up. </p>
			
			<form action="/SupTrip/register" method="post" id="registerForm" onSubmit="validForm(this)">
				<table>
	            	<tr>
                  		<td>
							<input class="input long wrong" type="text" id="lastName" name="lastName" placeholder="Last name" required>
							<span id="errorSpan1">
				          	 	 <% 
         							String errorMsgLastName = (String) request.getAttribute("errorMsgLastName");
         							out.println( errorMsgLastName );
         						%>
         					</span>
							
					 	</td>
						<td>
							<input class="input long" type="text" id="firstName" name="firstName" placeholder="First name" required>
							<span id="errorSpan2">
				          	 	 <% 
         							String errorMsgFirstName = (String) request.getAttribute("errorMsgFirstName");
         							out.println( errorMsgFirstName );
         						%>
         					</span>
						</td>
					</tr>
					<tr>
						<td>	
							<input class="input long" type="text" id="idBooster" name="idBooster" pattern="^[0-9]*$" placeholder="ID Booster" required>
							<span>
				          	 	 <% 
         							String errorMsgIDBooster = (String) request.getAttribute("errorMsgIDBooster");
         							out.println( errorMsgIDBooster );
         						%>
         					</span>
						</td>
						<td>
							<input class="input long" type="email" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" placeholder="Email address" required>
							<span>
				          	 	 <% 
         							String errorMsgEmail = (String) request.getAttribute("errorMsgEmail");
         							out.println( errorMsgEmail );
         						%>
         					</span>
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
		      			   <span>
				          	 	 <% 
         							String errorMsgCampusName = (String) request.getAttribute("errorMsgCampusName");
         							out.println( errorMsgCampusName );
         						%>
         					</span>
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
		               		<span>
				          	 	 <% 
         							String errorMsgCurrentSchoolYear = (String) request.getAttribute("errorMsgCurrentSchoolYear");
         							out.println( errorMsgCurrentSchoolYear );
         						%>
         					</span>
						</td>
					</tr>
					<tr>
						<td>
							<input class="input long" type="password" id="password" name="password" placeholder="Password" required>
							<span>
			          	 	 <% 
	       							String errorMsgPassword = (String) request.getAttribute("errorMsgPassword");
	       							out.println( errorMsgPassword );
	       						%>
	       					</span>
       					</td>
						<td>
							<input class="input long" type="password" id="passwordConf" name="passwordConf" placeholder="Password confirmation" required>
							<span>
			          	 	 <% 
	       							String errorMsgPasswordConf = (String) request.getAttribute("errorMsgPasswordConf");
	       							out.println( errorMsgPasswordConf );
	       						%>
	       					</span>
	       				</td>	
					</tr>
				</table>
				<br>
				<input class="button buttonBig" type="submit" value="Create my account">
			</form>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>