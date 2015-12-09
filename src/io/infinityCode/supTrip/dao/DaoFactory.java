package io.infinityCode.supTrip.dao;

import io.infinityCode.supTrip.dao.jpa.JpaCampusDao;
import io.infinityCode.supTrip.dao.jpa.JpaUserDao;

public class DaoFactory {

		private DaoFactory(){}
		
		public static CampusDao getCampusDao(){
			return new JpaCampusDao(PersistenceManager.getEntityManagerFactory());
		}
		
		public static UserDao getUserDao(){
			return new JpaUserDao(PersistenceManager.getEntityManagerFactory());
		}
}
