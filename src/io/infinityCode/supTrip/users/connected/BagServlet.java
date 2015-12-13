package io.infinityCode.supTrip.users.connected;

import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.entity.AvailableTrip;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(
	urlPatterns = { "/connected/bag" }
)
public class BagServlet extends HttpServlet
{
	private static final long serialVersionUID = 211L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher;
		List<AvailableTrip> reservingTrips;
		
		if(request.getSession().getAttribute("idBooster") == null)//might be a filter?
			dispatcher = getServletContext().getRequestDispatcher("/users/both/index.jsp");
		else
		{
			if(request.getSession().getAttribute("reservingTrips") == null) reservingTrips = new ArrayList<AvailableTrip>();
			else reservingTrips = (List<AvailableTrip>) request.getSession().getAttribute("reservingTrips");

			if(null != request.getParameter("d") && null != request.getParameter("a"))
				reservingTrips.add(new AvailableTrip(
					DaoFactory.getCampusDao().oneById(Integer.parseInt(request.getParameter("d"))),
					DaoFactory.getCampusDao().oneById(Integer.parseInt(request.getParameter("a")))
				));
			else if(null != request.getParameter("r"))
				reservingTrips.remove(Integer.parseInt(request.getParameter("r")));

			request.getSession().setAttribute("reservingTrips", reservingTrips);

			dispatcher = getServletContext().getRequestDispatcher("/users/connected/bag.jsp");
		}
		dispatcher.forward(request, response);
		
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		getServletContext()
			.getRequestDispatcher("/users/connected/bag.jsp")
			.forward(request, response);
		
		return;
	}
	
}
