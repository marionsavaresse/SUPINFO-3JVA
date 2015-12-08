<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.coolStudio.supTrip.dao.DaoFactory" %>
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
                btn.parentNode.children[1].disabled = editing;
            }
            function validForm(form)
            {
                for(var i=0; i < form.elements.length; i++)
                    if(form.elements[i].hasAttribute('disabled'))
                        document.getElementById(form.elements[i].id).disabled = false;
      			
                return true;
            }
        </script>
        <style>.editing{color: red}</style>
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %> 
		<form action="profile" id="EditForm" method=post onSubmit="return validForm(this)">
		<h1>Profile <span>see and edit your personal informations</span></h1>
		<main>           
			 <table>
	            <tr>
                    <td> 
                        <label for="familyName">Last Name</label>
                        <input type=text id="familyName" name="familyName" disabled value="<%=request.getSession().getAttribute("familyName")%>" placeholder="<%=request.getSession().getAttribute("familyName")%>">
                        <button type=button onclick="switchEdit(this)">Edit</button>
                    </td>	
                    <td> 
                        <label for="firstName">First Name</label>
                        <input type=text id="firstName" name="firstName" disabled value="<%=request.getSession().getAttribute("name")%>" placeholder="<%=request.getSession().getAttribute("name")%>">
                        <button type=button onclick="switchEdit(this)">Edit</button>
                    </td>
				</tr>
				
	            <tr>
                    <td> 
                        <label for="idBooster">ID Booster</label>
                        <input type=text id="idBooster" name="idBooster" disabled value="<%=request.getSession().getAttribute("idBooster")%>" placeholder="<%=request.getSession().getAttribute("idBooster")%>">
                    </td>	
                    <td> 
                        <label for="email">Email</label>
                        <input type=text id="email" name="email" disabled value="<%=request.getSession().getAttribute("email")%>" placeholder="<%=request.getSession().getAttribute("email")%>">
                        <button type=button onclick="switchEdit(this)">Edit</button>
                    </td>
				</tr>
				
	            <tr>
                    <td> 
                        <label for="campusName">Campus Name</label>
                        <input type=text id="campusName" name="campusName" disabled value="<%=request.getSession().getAttribute("campusID")%>" placeholder="<%=request.getSession().getAttribute("campusID")%>">
                        <button type=button onclick="switchEdit(this)">Edit</button>
                    </td>	
                    <td> 
                        <label for="currentSchoolYear">Current School Year</label>
                        <input type=text id="currentSchoolYear" name="currentSchoolYear" disabled value="<%=request.getSession().getAttribute("currentSchoolYear")%>" placeholder="<%=request.getSession().getAttribute("currentSchoolYear")%>">
                        <button type=button onclick="switchEdit(this)">Edit</button>
                    </td>
				</tr>
	        </table>
			<input type=submit value="Save Changes" form="EditForm" class="button" id="buttonLogin">
			</form>	
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>