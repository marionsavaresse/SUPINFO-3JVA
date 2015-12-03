package fr.coolStudio.supTrip.users.anonymous;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/register" }
)
public class RegisterServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/register.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		String errorMsg = "";
		if (checkId(request.getParameter("idBooster")).equals("Ok"))
		{
			if (checkPWD(request.getParameter("password")).equals("Ok"))
			{
				response.getWriter().print(request.getParameter("idBooster"));
				response.getWriter().print(hashPWD(request.getParameter("password")));
				response.getWriter().print(request.getParameter("firstName"));
				response.getWriter().print(request.getParameter("lastName"));
				response.getWriter().print(request.getParameter("email"));
				response.getWriter().print(request.getParameter("campusName"));
				
				//request.getSession().setAttribute("id", request.getParameter("idBooster"));
				//((HttpServletResponse)response).sendRedirect("/SupTrip/login");
				
				return;
			}else{
				errorMsg = "pwd more than 6 char";
			}
		}else{
			errorMsg = "Id needs to be 6 Numbers";
		}
		response.getWriter().print(errorMsg);
	}
	
	
	protected String checkId(String idBooster)
	throws ServletException, IOException
	{		
		//ID IS ALWAYS 6 NUMBERS
		if (idBooster.length() == 6){
			//CHECKS IF ONLY NUMBERS
			try{
				int num = Integer.parseInt(idBooster);
						return "Ok";
				} catch (NumberFormatException e) {
				}
		}
		return "";
	}	
	protected String checkPWD(String password)
	throws ServletException, IOException
	{		
		//ID IS ALWAYS 6 NUMBERS
		if (password.length() >= 6){
						return "Ok";
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