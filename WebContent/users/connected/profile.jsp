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
        </script>
        <style>.editing{color: red}</style>
	</head>
	<body>
		<%@include file="../both/navbar.jsp" %>

		<h1>Profile <span>see and edit your personal informations</span></h1>
		<main>           
		
		 <table>
                <tr>
                    <td> 
                        <label for="familyName">Last Namee</label>
                        <input type=text id="familyName" name="familyName" form="EditForm" placeholder="<%=request.getSession().getAttribute("familyName")%>" disabled>
                        <button onclick="switchEdit(this)">Edit</button>
                    </td>
                    </tr>
               </table>
				<%--
				<tr>
					<td> 
					<%int test = 0;
					<c:choose>
					   <c:when test="${test == 0}">
							Last Name 
							<input type=text id="familyName" name="familyName" form="EditForm" placeholder="<%=request.getSession().getAttribute("familyName")%>">
					   </c:when>
					   <c:otherwise>
							Last asdf 
							<input type=text id="familyName" name="familyName" form="EditForm" placeholder="<%=request.getSession().getAttribute("email")%>">
					   </c:otherwise>
					</c:choose>
					<h:commandButton value="edit" onclick="yourcondition=1"/>
					</td>
					<td>First Name <%=request.getSession().getAttribute("name")%></td>
				</tr>	
				<tr>
					<td>ID Booster <%=request.getSession().getAttribute("idBooster")%></td>
					<td>Email <%=request.getSession().getAttribute("email")%></td>
				</tr>	
				<tr>
					<td>Campus <%=request.getSession().getAttribute("campusID")%></td>
					<td>Current School Year <%=request.getSession().getAttribute("currentSchoolYear")%></td>
				</tr>
			</table>--%>
		</main>

		<%@include file="../both/footer.jsp" %>
	</body>
</html>