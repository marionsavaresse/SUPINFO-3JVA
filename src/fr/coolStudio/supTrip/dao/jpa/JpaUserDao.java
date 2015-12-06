package fr.coolStudio.supTrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import fr.coolStudio.supTrip.dao.UserDao;
import fr.coolStudio.supTrip.bo.User;

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
	public User oneById(int userID) {
		return getEntityManagerFactory().createEntityManager()
				.find(User.class, userID);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> all() {
		EntityManager em = getEntityManagerFactory().createEntityManager();
		Query selectAllCat = em.createQuery("SELECT a FROM User a");
		return selectAllCat.getResultList();
	}
}
