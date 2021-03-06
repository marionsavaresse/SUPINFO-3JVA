package io.infinityCode.supTrip.users.anonymous;
import io.infinityCode.supTrip.dao.DaoFactory;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.dao.jpa.JpaUserDao;
import io.infinityCode.supTrip.entity.User;



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
		if(request.getSession().getAttribute("idBooster") == null)
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/users/anonymous/register.jsp");
			dispatcher.forward(request, response);
		}
		else
			response.sendRedirect("/SupTrip/");
		return;
	}	

	
	public void doGetErrorMessage(HttpServletRequest request, HttpServletResponse response )
	throws ServletException, IOException
	{
		String errorMsg = "";
		
		if(request.getParameter("lastName") == "")
		{
			errorMsg = "You must specify your last name.";
			request.setAttribute( "errorMsgLastName", errorMsg );
		}
		
		if(request.getParameter("firstName") == "")
		{
			errorMsg = "You must specify your first name.";
			request.setAttribute( "errorMsgFirstName", errorMsg );
		}
		
		if(!(checkId(request.getParameter("idBooster")).equals("Ok")))
		{
			errorMsg = "Your ID Booster must be composed of 6 numbers.";
			request.setAttribute( "errorMsgIDBooster", errorMsg );
		}
		else if (!(checkExistantIds(request.getParameter("idBooster")).equals("Ok")))
		{
			errorMsg = "There is already an account with this ID Booster.";
			request.setAttribute( "errorMsgIDBooster", errorMsg );
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
		
		if (!(checkPWD(request.getParameter("password")).equals("Ok")))
		{
			errorMsg = "Your password must contain six characters.";
			request.setAttribute( "errorMsgPassword", errorMsg );
		}
						
		if (!(request.getParameter("passwordConf").equals(request.getParameter("password"))))
		{
			errorMsg = "Passwords do not match.";
			request.setAttribute( "errorMsgPasswordConf", errorMsg );
		}
		
		this
			.getServletContext()
			.getRequestDispatcher("/users/anonymous/register.jsp")
			.forward(request, response);
		
		return;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		if ((request.getParameter("lastName") != "") 
		 && (request.getParameter("firstName") != "") 
		 && (checkId(request.getParameter("idBooster")).equals("Ok")) 
		 && (checkExistantIds(request.getParameter("idBooster")).equals("Ok"))
		 && (request.getParameter("campusName") != null) 
		 && (request.getParameter("currentSchoolYear") != null) 
		 && (checkPWD(request.getParameter("password")).equals("Ok")) 
		 && hashPWD((request.getParameter("passwordConf"))).equals(hashPWD(request.getParameter("password")))
		){
			User user = new User(Integer.parseInt(request.getParameter("idBooster")),
				request.getParameter("lastName"),
				request.getParameter("firstName"),
				request.getParameter("email"),
				hashPWD(request.getParameter("password")),
				request.getParameter("campusName"),
				request.getParameter("currentSchoolYear")
			);
		
				
			DaoFactory.getUserDao().persist(user);
			
			User object = DaoFactory.getUserDao().oneById(Integer.parseInt(request.getParameter("idBooster")));
			request.getSession().setAttribute("idBooster", object.getIdBooster());
			request.getSession().setAttribute("name", object.getName());
			request.getSession().setAttribute("familyName", object.getFamilyName());
			request.getSession().setAttribute("email", object.getEmail());
			request.getSession().setAttribute("campusID", object.getCampusName());
			request.getSession().setAttribute("currentSchoolYear", object.getCurrentSchoolYear());
			
			((HttpServletResponse)response).sendRedirect("/SupTrip/");
			return;
		}
		doGetErrorMessage(request, response);
		return;
}
	
	
	protected String checkId(String idBooster)
	throws ServletException, IOException
	{		
		// We suppose ID Booster is always 6 numbers (for actuals students)
		if(idBooster.length() == 6)
		{
			try
			{
				int num = Integer.parseInt(idBooster);
				return "Ok";
			}
			catch(NumberFormatException e) {
			}
		}
		return "";
	}
	
	protected String checkExistantIds(String idBooster)
	throws ServletException, IOException
	{
		List<User> listUsers = new ArrayList<User>();
		listUsers = DaoFactory.getUserDao().all(); 

		for (int i = 0; i < listUsers.size(); i++)
			 if (Integer.parseInt(idBooster) == listUsers.get(i).getIdBooster())
				 return "";
		return "Ok";	

	}	
	
	protected String checkEmail(String email)
	throws ServletException, IOException
	{		
		String regex = "^[A-Za-z0-9+_.-]+@(.+)$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);
		
		if (matcher.matches())
			return "Ok";
		return "";
	}
	
	protected String checkPWD(String password)
	throws ServletException, IOException
	{		
		if (password.length() >= 6)
			return "Ok";
		return "";
	}
			
	
	// Does a MD5 Hash on the PWD
	protected String hashPWD(String password)
	{
		MessageDigest md5 = null;
		// Requires a try/catch because getInstance methods throws exception (see checkId declaration)
		try
		{
			md5 = MessageDigest.getInstance("MD5");
		}
		catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
		}
		byte[] messageDigest = md5.digest(password.getBytes());
		
		String result = "";
		for (int i=0; i < messageDigest.length; i++)
			result += Integer.toString( ( messageDigest[i] & 0xff ) + 0x100, 16).substring( 1 );
		return result;
	}
}
