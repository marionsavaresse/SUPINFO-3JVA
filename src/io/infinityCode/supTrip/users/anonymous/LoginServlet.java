package io.infinityCode.supTrip.users.anonymous;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.entity.User;

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
		if(request.getSession().getAttribute("idBooster") == null){
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/login.jsp");
			dispatcher.forward(request, response);
		}else{
			((HttpServletResponse)response).sendRedirect("/SupTrip/");
		}
	}
	
	public void doGetErrorMessage(int number, HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		String errorMsg = "";
						
		switch(number) {
	    case 1:
	    	errorMsg = "There is no account created with this ID Booster.";
			request.setAttribute( "errorMsgLogin", errorMsg );
	        break;
	        
	    case 2:
	    	errorMsg = "Login incorrect.";
			request.setAttribute( "errorMsgLogin", errorMsg );
			break;
		}	
		
		this.getServletContext().getRequestDispatcher( "/users/anonymous/login.jsp" ).forward( request, response );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{		
		if (checkId(request.getParameter("idBooster"))){
			User object = DaoFactory.getUserDao().oneById(Integer.parseInt(request.getParameter("idBooster")));
			
			if (object != null)
			{
				if(hashPWD(request.getParameter("password")).equals(object.getPassword()))
				{
					request.getSession().setAttribute("idBooster", object.getIdBooster());
					request.getSession().setAttribute("name", object.getName());
					request.getSession().setAttribute("familyName", object.getFamilyName());
					request.getSession().setAttribute("email", object.getEmail());
					request.getSession().setAttribute("campusID", object.getCampusName());
					request.getSession().setAttribute("currentSchoolYear", object.getCurrentSchoolYear());

					((HttpServletResponse)response).sendRedirect("/SupTrip/");
				}else{
					doGetErrorMessage(2, request, response);
				}
			}else{
				doGetErrorMessage(1, request, response);
			}
		}else{
			doGetErrorMessage(1, request, response);
		}
	}
	
	protected boolean checkId(String idBooster)
	throws ServletException, IOException
	{		
		if (idBooster.length() == 6){
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
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
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
