package io.infinityCode.supTrip.users.anonymous;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter(
	urlPatterns={
		"/auth/*",
		"/navbar.jsp"
	}
)
public class AuthenticateFilter implements Filter
{
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		if(null == ((HttpServletRequest)request).getSession().getAttribute("user_name"))
		{
			((HttpServletResponse)response).sendRedirect("/SupTrip/index.jsp");
			return;
		}
		else
		{
			((HttpServletResponse)response).sendRedirect("/SupTrip/login.html");
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	@Override
    public void destroy()
    {}

    @Override
    public void init(FilterConfig filConf)
    throws ServletException
    {}
}
