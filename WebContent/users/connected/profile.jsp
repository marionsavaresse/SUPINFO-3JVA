<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="io.infinityCode.supTrip.dao.DaoFactory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<meta http-equiv=Content-Type content="text/html;charset=UTF-8">

		<title>SupTrip - Profile</title>

		<link rel=stylesheet type=text/css href="my.css">
		
		<script>
            function toggleClassAttribut(node, wantedClass)
            {
                node.className.match(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", ''))
                ? node.className = node.className.replace(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", 'g'), '').replace(new RegExp("(^\\s)", ''), '')
                : node.className += " " + wantedClass;
            }
        
            function switchEdit(btn)
            {
                var editing = Boolean(btn.innerHTML.toLowerCase() == "ok");
                if(editing)
                {
                    btn.innerHTML = "Edit";
                    toggleClassAttribut(btn.parentNode, "editing")
                }
                else
                {
                    btn.innerHTML = "Ok";
                    toggleClassAttribut(btn.parentNode, "editing");
                }
                btn.parentNode.children[2].disabled = editing;
            }
            function validForm(form)
            {
                for(var i=0; i < form.elements.length; i++)
                    if(form.elements[i].hasAttribute('disabled'))
                        document.getElementById(form.elements[i].id).disabled = false;
      			
                return true;
            }
        </script>
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
		
		     <form id="profileForm" action="profile" id="EditForm" method=post onSubmit="return validForm(this)">  
			 <table>
	            <tr>
                    <td>
                    	<label for="familyName">Last Name</label> <button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="familyName" name="familyName" disabled value="<%=request.getSession().getAttribute("familyName")%>" placeholder="<%=request.getSession().getAttribute("familyName")%>">
                    </td>	
                    <td> 
                    	<label for="firstName">First Name</label> <button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="firstName" name="firstName" disabled value="<%=request.getSession().getAttribute("name")%>" placeholder="<%=request.getSession().getAttribute("name")%>">
          
                    </td>
				</tr>
				
	            <tr>
                    <td> 
                    	<label for="idBooster">ID Booster</label>
                        <input class="inputProfile input long" type=text id="idBooster" name="idBooster" disabled value="<%=request.getSession().getAttribute("idBooster")%>" placeholder="<%=request.getSession().getAttribute("idBooster")%>">
                    </td>	
                    <td> 
                    	<label for="email">Email address</label> <button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="email" name="email" disabled value="<%=request.getSession().getAttribute("email")%>" placeholder="<%=request.getSession().getAttribute("email")%>">
					 </td>
				</tr>
				
	            <tr>
                    <td> 
                    	<label for="campusName">Campus Name</label> <button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="campusName" name="campusName" disabled value="<%=request.getSession().getAttribute("campusID")%>" placeholder="<%=request.getSession().getAttribute("campusID")%>">
                    </td>	
                    <td> 
                    	<label for="currentSchoolYear">Current School Year</label><button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="currentSchoolYear" name="currentSchoolYear" disabled value="<%=request.getSession().getAttribute("currentSchoolYear")%>" placeholder="<%=request.getSession().getAttribute("currentSchoolYear")%>">                      
                    </td>
				</tr>
				
				<tr>
                    <td> 
                    	<label for="password">Password</label> <button class="button profile" type=button onclick="switchEdit(this)">Edit</button>
                        <input class="inputProfile input long" type=text id="password" name="password" disabled value="<%=request.getSession().getAttribute("password")%>" placeholder="<%=request.getSession().getAttribute("password")%>">
                    </td>	
                    <td style="display:none;"> 
                    	<label for="passwordConfirmation">Password confirmation</label>
                        <input class="inputProfile input long" type=text id="passwordConfirmation" name="passwordConfirmation">                      
                    </td>
				</tr>
	        </table>
	        <br><br>
			<input class="button buttonBig" type=submit value="Save Changes" form="EditForm" class="button">
			</form>	
			
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>