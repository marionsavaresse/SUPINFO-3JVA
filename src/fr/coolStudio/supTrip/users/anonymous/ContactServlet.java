package fr.coolStudio.supTrip.users.anonymous;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/contact" }
)
public class ContactServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/contact.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		response.getWriter().print("WWWe got you request but the server is temporaly under maintenance, try later :)");
	}

}
