package io.infinityCode.supTrip.users.connected;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.infinityCode.supTrip.bo.User;
import io.infinityCode.supTrip.dao.DaoFactory;


@WebServlet(
	description = "Gère la connexion des utilisateurs et tout ce qui est lié à la fonctionnalité (formulaires, requetes, verifications, ...)",
	urlPatterns = { "/connected/profile" }
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
	
	public void doGetErrorMessage(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		String errorMsg = "";
		
		if (request.getParameter("lastName") == "")
		{
			errorMsg = "You must specify your last name.";
			request.setAttribute( "errorMsgLastName", errorMsg );
		}
		
		if (request.getParameter("firstName") == "")
		{
			errorMsg = "You must specify your first name.";
			request.setAttribute( "errorMsgFirstName", errorMsg );
		}
		
		if (!(checkEmail(request.getParameter("email")).equals("Ok")))
		{
			errorMsg = "Your must specify a correct email address.";
			request.setAttribute( "errorMsgEmail", errorMsg );
		}
		
		if (request.getParameter("campusName") == null )
		{
			errorMsg = "You must specify your campus name.";
			request.setAttribute( "errorMsgCampusName", errorMsg );
		}
		
		if (request.getParameter("currentSchoolYear") == null )
		{
			errorMsg = "You must specify your current school year.";
			request.setAttribute( "errorMsgCurrentSchoolYear", errorMsg );
		}
	/*	
		if (!(checkPWD(request.getParameter("password")).equals("Ok")))
		{
			errorMsg = "Your password must contain six characters.";
			request.setAttribute( "errorMsgPassword", errorMsg );
		}
						
		if (!(request.getParameter("passwordConf").equals(request.getParameter("password"))))
		{
			errorMsg = "Passwords do not match.";
			request.setAttribute( "errorMsgPasswordConf", errorMsg );
		}*/
		this.getServletContext().getRequestDispatcher( "/users/connected/profile.jsp" ).forward( request, response );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{	
		if ((request.getParameter("lastName") != "") 
				&& (request.getParameter("firstName") != "") 
				&& (request.getParameter("campusName") != null) 
				&& (request.getParameter("currentSchoolYear") != null))
		{
			User object = DaoFactory.getUserDao().oneById((int)(request.getSession().getAttribute("idBooster")));

			if (request.getParameter("password") != null
					&& hashPWD(request.getParameter("passwordConf")).equals(hashPWD(request.getParameter("password"))))
			{
				object.setPassword(hashPWD(request.getParameter("password")));
			}else{
				String errorMsg;
				if (!(checkPWD(request.getParameter("password")).equals("Ok")))
				{
					errorMsg = "Your password must contain six characters.";
					request.setAttribute( "errorMsgPassword", errorMsg );
				}
				if (!(request.getParameter("passwordConf").equals(request.getParameter("password")))){
					errorMsg = "Passwords do not match.";
					request.setAttribute( "errorMsgPasswordConf", errorMsg );
				}
				this.getServletContext().getRequestDispatcher( "/users/connected/profile.jsp" ).forward( request, response );
			}
			
			//object.setFamilyName(request.getParameter("familyName"));
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
			
			((HttpServletResponse)response).sendRedirect("/SupTrip/connected/profile");
		}else{
			doGetErrorMessage(request, response);
		}
	}

	
	
	protected String checkId(String idBooster)
	throws ServletException, IOException
	{		
		// We suppose ID Booster is always 6 numbers (for actuals students)
		if (idBooster.length() == 6){
			try{
				int num = Integer.parseInt(idBooster);
						return "Ok";
				} catch (NumberFormatException e) {
				}
		}
		return "";
	}	
	
	protected String checkEmail(String email)
	throws ServletException, IOException
	{		
		String regex = "^[A-Za-z0-9+_.-]+@(.+)$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);
		
		if (matcher.matches()){
			return "Ok";
		}
		return "";
	}
	
	protected String checkPWD(String password)
	throws ServletException, IOException
	{		
		if (password.length() >= 6){
						return "Ok";
		}
		return "";
	}
			
	
	// Does a MD5 Hash on the PWD
	protected String hashPWD(String password)
	{
		MessageDigest md5 = null;
		// Requires a try/catch because getInstance methods throws exception (see checkId declaration)
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
