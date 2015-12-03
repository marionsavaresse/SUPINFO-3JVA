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
	urlPatterns = { "/login" }
)
public class LoginServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/index.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{		
		// A REMPLACER AVEC REQUETE SQL ID = 172012 || 172012, PWD = "TEST"
		if (checkId(request.getParameter("idBooster")).equals("172012") || checkId(request.getParameter("idBooster")).equals("174595") && hashPWD(request.getParameter("userPwd")).equals("098f6bcd4621d373cade4e832627b4f6"))
		{
			request.getSession().setAttribute("id", request.getParameter("idBooster"));
			((HttpServletResponse)response).sendRedirect("/SupTrip/login");
		}else{
			((HttpServletResponse)response).sendRedirect("/SupTrip/register");
		}
		
	}
	
	protected String checkId(String idBooster)
	throws ServletException, IOException
	{		
		//ID IS ALWAYS 6 NUMBERS
		if (idBooster.length() == 6){
			//CHECKS IF ONLY NUMBERS
			try{
				int num = Integer.parseInt(idBooster);
						return idBooster;
				} catch (NumberFormatException e) {
				}
		}
		else{
		}
		return "";
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
