package fr.coolStudio.supTrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import fr.coolStudio.supTrip.bo.AvailableTrip;
import fr.coolStudio.supTrip.dao.AvailableTripDao;

public class JpaAvailableTripDao extends BaseJpaDao implements AvailableTripDao  {

	public JpaAvailableTripDao(EntityManagerFactory emf) {
		super(emf);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AvailableTrip> all() {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		/*
		Query selectAllCat = em.createQuery("SELECT availabletrip FROM availabletrip");
		return selectAllCat.getResultList();
		*/
		Query query = em.createNativeQuery("SELECT @i:=@i+1 AS line, t.* FROM availabletrips t,(SELECT @i:=0) bordelDeMerde", AvailableTrip.class);
		List<AvailableTrip> myViewList = query.getResultList();
		return myViewList;
	}

}
