<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<%@ page import="io.infinityCode.supTrip.bo.Campus" %>
<%@ page import="java.util.List"%>

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
							<span id="errorSpan1"><%=request.getAttribute("errorMsgLastName")%></span>
							
					 	</td>
						<td>
							<input class="input long" type="text" id="firstName" name="firstName" placeholder="First name" required>
							<span id="errorSpan2"><%=request.getAttribute("errorMsgFirstName")%></span>
						</td>
					</tr>
					<tr>
						<td>	
							<input class="input long" type="text" id="idBooster" name="idBooster" pattern="^[0-9]*$" placeholder="ID Booster" required>
							<span><%=request.getAttribute("errorMsgIDBooster")%></span>
						</td>
						<td>
							<input class="input long" type="email" id="email" name="email" pattern="[\w\d\._%+-]+@[\w\d\.-]+\.[a-z]{2,4}$" placeholder="Email address" required>
							<span><%=request.getAttribute("errorMsgEmail")%></span>
						</td>
					</tr>
					<tr>
						<td>
							<% List<String> list = DaoFactory.getCampusDao().allCampusName(); %>
			               <select class="dropdown long" type="text" id="campusName" name="campusName" required>
			        			<option value="" disabled selected>Campus name</option>
			        			<%for(int i=0; i < list.size(); ++i){%>
			           				 <option><%=list.get(i)%></option>
		     					<% } %>
		      			   </select>
		      			   <span><%=request.getAttribute("errorMsgCampusName")%></span>
						</td>
						<td>
							<select class="dropdown long" type="text" id="currentSchoolYear" name="currentSchoolYear" placeholder="B3" required>
				               	<option value="" disabled selected>Current school year</option>
				               	<option>A.Sc. 1</option>
				               	<option>A.Sc. 2</option>
				               	<option>B.Sc.</option>
				               	<option>M.Sc. 1</option>
				               	<option>M.Sc. 2</option>
		               		</select>
		               		<span><%=request.getAttribute("errorMsgCurrentSchoolYear")%></span>
						</td>
					</tr>
					<tr>
						<td>
							<input class="input long" type="password" id="password" name="password" placeholder="Password" required>
							<span><%=request.getAttribute("errorMsgPassword")%></span>
       					</td>
						<td>
							<input class="input long" type="password" id="passwordConf" name="passwordConf" placeholder="Password confirmation" required>
							<span><%=request.getAttribute("errorMsgPasswordConf")%></span>
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