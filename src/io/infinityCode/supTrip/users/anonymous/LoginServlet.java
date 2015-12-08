package io.infinityCode.supTrip.users.anonymous;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.infinityCode.supTrip.bo.User;
import io.infinityCode.supTrip.dao.DaoFactory;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/login" }
)
public class LoginServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		if(request.getSession().getAttribute("id") == null){ //might be a filter?
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/login.jsp");
			dispatcher.forward(request, response);
		}else{
			((HttpServletResponse)response).sendRedirect("/SupTrip/");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{		
		// A REMPLACER AVEC REQUETE SQL ID = 172012 || 172012, PWD = "TEST"
		if (checkId(request.getParameter("idBooster"))){
			User object = DaoFactory.getUserDao().oneById(Integer.parseInt(request.getParameter("idBooster")));
			
			if (object != null)
			{
				if(request.getParameter("password").equals(object.getPassword()))
				{
					request.getSession().setAttribute("idBooster", object.getIdBooster());
					request.getSession().setAttribute("name", object.getName());
					request.getSession().setAttribute("familyName", object.getFamilyName());
					request.getSession().setAttribute("email", object.getEmail());
					request.getSession().setAttribute("campusID", object.getCampusName());
					request.getSession().setAttribute("password", object.getPassword());
					request.getSession().setAttribute("currentSchoolYear", object.getCurrentSchoolYear());

					((HttpServletResponse)response).sendRedirect("/SupTrip/");
				}
			}else{
				((HttpServletResponse)response).sendRedirect("/SupTrip/register");
			}
		}else{
		((HttpServletResponse)response).sendRedirect("/SupTrip/register");
		}
	}
	
	protected boolean checkId(String idBooster)
	throws ServletException, IOException
	{		
		//ID IS ALWAYS 6 NUMBERS
		if (idBooster.length() == 6){
			//CHECKS IF ONLY NUMBERS
			try{
				int num = Integer.parseInt(idBooster);
						return true;
				} catch (NumberFormatException e) {
				}
		}
		else{
		}
		return false;
	}
	
	//Does a MD5 Hash on the PWD
	protected String hashPWD(String password)
	{
		MessageDigest md5 = null;
		//REQUIRES A TRYCATCH I DONT KNOW WHY => That's 'cause getInstance methods throws exception (see checkId declaration)
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		byte[] messageDigest = md5.digest(password.getBytes());
		
		String result = "";
		for (int i=0; i < messageDigest.length; i++) {
			result += Integer.toString( ( messageDigest[i] & 0xff ) + 0x100, 16).substring( 1 );
		}
		return result;
	}

}
