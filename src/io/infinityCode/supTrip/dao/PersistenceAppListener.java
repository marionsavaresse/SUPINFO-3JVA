package io.infinityCode.supTrip.dao;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import io.infinityCode.supTrip.dao.PersistenceManager;

@WebListener
public class PersistenceAppListener implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt){}

	public void contextDestroyed(ServletContextEvent evt)
	{
		PersistenceManager.closeEntityManagerFactory();
	}
}
