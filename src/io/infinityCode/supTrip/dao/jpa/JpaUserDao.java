package io.infinityCode.supTrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import io.infinityCode.supTrip.dao.UserDao;
import io.infinityCode.supTrip.bo.User;

public class JpaUserDao extends BaseJpaDao implements UserDao {
	
	public JpaUserDao(EntityManagerFactory emf){
		super(emf);
	}
	
	@Override
	public User persist(User user) {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		EntityTransaction t = em.getTransaction();
		t.begin();
		em.persist(user);
		t.commit();
		
		return user;
	}

	@Override
	public String update(User user) {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		EntityTransaction t = em.getTransaction();
		 
		  t.begin();
			em.merge(user);
		  t.commit();
		  
		return user.getFamilyName();
	}
	
	@Override
	public User oneById(int userID) {
		return getEntityManagerFactory().createEntityManager()
				.find(User.class, userID);
	}
	
	@Override
	public Long countUsers() {
		return Long.parseLong(getEntityManagerFactory().createEntityManager().createNativeQuery("SELECT COUNT(campusId) FROM users").getSingleResult().toString());
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> all() {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		Query selectAllCat = em.createQuery("SELECT a FROM User a");
		return selectAllCat.getResultList();
	}
}
