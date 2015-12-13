package io.infinityCode.supTrip.filter;

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
		"/connected/*"
	}
)
public class AuditFilter implements Filter
{
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		if( ((HttpServletRequest)request).getSession().getAttribute("idBooster") == null)
		{
			((HttpServletResponse)response).sendRedirect("/SupTrip/login");
			return;
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
