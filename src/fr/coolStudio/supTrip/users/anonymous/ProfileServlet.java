package fr.coolStudio.supTrip.users.anonymous;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


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
		if(request.getSession().getAttribute("id") == null){ //might be a filter?
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/index.jsp");
			dispatcher.forward(request, response);
		}else{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/profile.jsp");
			dispatcher.forward(request, response); //can't put this line down for some reason, ty java
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{	
		
	}

}
