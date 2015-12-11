<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<%@ page import="io.infinityCode.supTrip.bo.Campus" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Profile</title>

		<link rel=stylesheet type=text/css href="my.css">
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %> 
		<h1>
			Profile 
			<span>see and edit your personal informations</span>
			<div id="searchBar">
				<input class="button buttonBig" id="envoyer" type="submit" value="See my order history">
			</div>
		</h1>
		<main>  
		
			<%  %>
		     <form id="profileForm" action="profile" id="EditForm" method=post onSubmit="return validForm(this)">  
			 <table>
	            <tr>
                    <td>
                    	<label for="familyName">Last Name</label> <button class="button profile" type=button onclick="switchEdit(this,'1')">Edit</button>
                        <input class="inputProfile input long" type=text id="familyName" name="familyName" disabled value="<%=session.getAttribute("familyName")%>">
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
                    	<label for="firstName">First Name</label> <button class="button profile" type=button onclick="switchEdit(this,'2')">Edit</button>
                        <input class="inputProfile input long" type=text id="firstName" name="firstName" disabled value="<%=session.getAttribute("name")%>">
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
                    	<label for="idBooster">ID Booster</label>
                        <input class="inputProfile input long" type=text id="idBooster" name="idBooster" disabled value="<%=session.getAttribute("idBooster")%>">
                    </td>	
                    <td> 
                    	<label for="email">Email address</label> <button class="button profile" type=button onclick="switchEdit(this,'3')">Edit</button>
                        <input class="inputProfile input long" type=text id="email" name="email" disabled value="<%=session.getAttribute("email")%>">
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
                    	<label for="campusName">Campus Name</label> <button class="button profile" type=button onclick="switchEdit(this,'4')">Edit</button>
                        <% List<String> list = DaoFactory.getCampusDao().allCampusName(); %>
			               <select class="selectProfile dropdown long"" type="text" id="campusName" name="campusName" placeholder="Campus name" disabled>
			        			<option value="" disabled selected>Campus name</option>
			        			<%for(int i=0; i < list.size(); ++i){%>
			           				 <option <% if(list.get(i).equals(session.getAttribute("campusID"))) out.println("selected"); %>><%=list.get(i)%></option>
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
                    	<label for="currentSchoolYear">Current School Year</label><button class="button profile" type=button onclick="switchEdit(this,'5')">Edit</button>
                        <select class="selectProfile dropdown long" type="text" id="currentSchoolYear" name="currentSchoolYear" placeholder="B3" disabled>
			               	<option value="" disabled selected>Current school year</option>
			               	<option <% if(session.getAttribute("currentSchoolYear").equals("A.Sc. 1")) out.println("selected"); %>>A.Sc. 1</option>
			               	<option <% if(session.getAttribute("currentSchoolYear").equals("A.Sc. 2")) out.println("selected"); %>>A.Sc. 2</option>
			               	<option <% if(session.getAttribute("currentSchoolYear").equals("B.Sc.")) out.println("selected"); %>>B.Sc.</option>
			               	<option <% if(session.getAttribute("currentSchoolYear").equals("M.Sc. 1")) out.println("selected"); %>>M.Sc. 1</option>
			               	<option <% if(session.getAttribute("currentSchoolYear").equals("M.Sc. 2")) out.println("selected"); %>>M.Sc. 2</option>
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
                    	<label for="password" id="labelPwd">Password</label> <button class="button profile" id="buttonPwd" type=button onclick="switchEdit(this,'6')">Edit</button>
                        <input class="inputProfile input long" type="password" id="password pwd" name="password" disabled value="<%=session.getAttribute("password")%>">
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
                    <td id="tdPasswordConf" style="display:none;"> 
                    	<label for="passwordConfirmation" class="editing">Password confirmation</label> 
                        <input class="inputProfile input long" type="password" id="passwordConfirmation" name="passwordConfirmation">                      
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
	        <br><br>
			<input class="button buttonBig" type=submit value="Save Changes" form="profileForm" class="button">
			<span id="spanButton"></span>
			</form>	
			
		</main>

		<%@include file="../both/footer.jsp" %>
		<script type="text/javascript" src="js/profile.js"></script>
	</body>
</html>