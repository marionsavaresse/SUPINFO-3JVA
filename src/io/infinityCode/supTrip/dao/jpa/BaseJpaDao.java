package io.infinityCode.supTrip.dao.jpa;

import javax.persistence.EntityManagerFactory;

public abstract class BaseJpaDao
{
	private EntityManagerFactory emf;
	
	public BaseJpaDao(EntityManagerFactory emf)
	{
		this.emf = emf;
	}
	
	public EntityManagerFactory getEntityManagerFactory()
	{
		return this.emf;
	}
	
}