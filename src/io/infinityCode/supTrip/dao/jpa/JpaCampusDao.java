package io.infinityCode.supTrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import io.infinityCode.supTrip.dao.CampusDao;
import io.infinityCode.supTrip.entity.Campus;

public class JpaCampusDao extends BaseJpaDao implements CampusDao
{
	public JpaCampusDao(EntityManagerFactory emf){ super(emf); }
	
	@Override
	public Campus persist(Campus campus) {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		EntityTransaction t = em.getTransaction();

		t.begin();
		em.persist(campus);
		t.commit();
		
		return campus;
	}

	@Override
	public Campus oneById(int campusId)
	{
		return getEntityManagerFactory()
			.createEntityManager()
			.find(Campus.class, campusId);
	}

	@Override
	public Campus oneByName(String xx) {
		return (Campus) getEntityManagerFactory()
			.createEntityManager()
			.createQuery("SELECT c FROM Campus c WHERE c.campusName = :search")
			.setParameter("search", xx)
			.getSingleResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Campus> all()
	{
		return getEntityManagerFactory()
			.createEntityManager()
			.createQuery("SELECT c FROM Campus c")
			.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Campus> allExceptGivenCampus(String search)
	{
		return getEntityManagerFactory()
			.createEntityManager()
			.createQuery("SELECT c FROM Campus c WHERE c.campusName != :search")
			.setParameter("search", search)
			.getResultList();
	}
	
	@Override
	public Long countCampuses()
	{
		return Long.parseLong(
			getEntityManagerFactory()
			.createEntityManager()
			.createNativeQuery("SELECT COUNT(name) FROM campuses")
			.getSingleResult()
			.toString()
		);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> allCampusName()
	{
		return getEntityManagerFactory()
			.createEntityManager()
			.createQuery("SELECT campusName FROM Campus")
			.getResultList();
	}
}
