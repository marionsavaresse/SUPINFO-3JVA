package fr.coolStudio.supTrip.users.connected;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.coolStudio.supTrip.bo.User;
import fr.coolStudio.supTrip.dao.DaoFactory;


@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/profile" }
)
public class ProfileServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		if(request.getSession().getAttribute("idBooster") == null){ //might be a filter?
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/both/index.jsp");
			dispatcher.forward(request, response);
		}else{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/connected/profile.jsp");
			dispatcher.forward(request, response); //can't put this line down for some reason, ty java
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{	
		User object = DaoFactory.getUserDao().oneById((int)(request.getSession().getAttribute("idBooster")));

		object.setFamilyName(request.getParameter("familyName"));
		object.setName(request.getParameter("firstName"));
		object.setEmail(request.getParameter("email"));
		object.setCampusName(request.getParameter("campusName"));
		object.setCurrentSchoolYear(request.getParameter("currentSchoolYear"));

		DaoFactory.getUserDao().update(object);
		request.getSession().setAttribute("name", object.getName());
		request.getSession().setAttribute("familyName", object.getFamilyName());
		request.getSession().setAttribute("email", object.getEmail());
		request.getSession().setAttribute("campusID", object.getCampusName());
		request.getSession().setAttribute("currentSchoolYear", object.getCurrentSchoolYear());
		
		
		((HttpServletResponse)response).sendRedirect("/SupTrip/profile");
	}

}
