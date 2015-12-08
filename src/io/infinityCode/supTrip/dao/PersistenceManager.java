package io.infinityCode.supTrip.dao;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceManager {
	private static EntityManagerFactory emf;
	
	public static EntityManagerFactory getEntityManagerFactory(){
		if(emf == null){
			emf = Persistence.createEntityManagerFactory("myDB");
		}
		return emf;
	}
	private PersistenceManager(){}
	
	public static void closeEntityManagerFactory(){
		if(emf != null && emf.isOpen()) emf.close();
	}
}
