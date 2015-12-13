package io.infinityCode.supTrip.users.connected;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(
	urlPatterns = { "/connected/confirmation" }
)
public class ConfirmationServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		getServletContext()
			.getRequestDispatcher("/users/connected/confirmation.jsp")
			.include(request, response);
		request.getSession().removeAttribute("reservingTrips");
		return;
	}
}
