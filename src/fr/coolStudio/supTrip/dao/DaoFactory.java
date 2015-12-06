package fr.coolStudio.supTrip.dao;

import fr.coolStudio.supTrip.dao.jpa.JpaAvailableTripDao;
import fr.coolStudio.supTrip.dao.jpa.JpaCampusDao;
import fr.coolStudio.supTrip.dao.jpa.JpaUserDao;

public class DaoFactory {

		private DaoFactory(){}
		
		public static CampusDao getCampusDao(){
			return new JpaCampusDao(PersistenceManager.getEntityManagerFactory());
		}
		
		public static UserDao getUserDao(){
			return new JpaUserDao(PersistenceManager.getEntityManagerFactory());
		}
		
		public static AvailableTripDao getAvailableTripDao(){
			return new JpaAvailableTripDao(PersistenceManager.getEntityManagerFactory());
		}
}
