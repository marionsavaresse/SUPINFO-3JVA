package fr.coolStudio.supTrip.dao;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import fr.coolStudio.supTrip.dao.PersistenceManager;

@WebListener
public class PersistenceAppListener implements ServletContextListener {
	// Call on application initialization
	public void contextInitialized(ServletContextEvent evt) {
		// Do nothing
	}

	// Call on application destruction
	public void contextDestroyed(ServletContextEvent evt) {
		PersistenceManager.closeEntityManagerFactory();
	}
}
