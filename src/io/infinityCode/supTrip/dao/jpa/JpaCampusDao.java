package io.infinityCode.supTrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import io.infinityCode.supTrip.dao.CampusDao;
import io.infinityCode.supTrip.bo.Campus;

public class JpaCampusDao extends BaseJpaDao implements CampusDao {
	
	public JpaCampusDao(EntityManagerFactory emf){
		super(emf);
	}
	
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
	public Campus oneById(Long campusId) {
		return getEntityManagerFactory().createEntityManager()
				.find(Campus.class, campusId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Campus> all() {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		Query selectAllCat = em.createQuery("SELECT address FROM Campus");
		return selectAllCat.getResultList();
	}
}
