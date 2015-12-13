package io.infinityCode.supTrip.users.connected;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/connected/bag" }
)
public class BagServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher;
		if(request.getSession().getAttribute("idBooster") == null){ //might be a filter?
			dispatcher = getServletContext().getRequestDispatcher("/users/both/index.jsp");
		}else{
			dispatcher = getServletContext().getRequestDispatcher("/users/connected/bag.jsp");
		}
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		//response.getWriter().print(request.getParameter("idk"));
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/connected/bag.jsp");
		dispatcher.forward(request, response);
	}
	
}
