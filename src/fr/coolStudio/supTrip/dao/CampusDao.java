package fr.coolStudio.supTrip.dao;

import java.util.List;

import fr.coolStudio.supTrip.bo.Campus;

import fr.coolStudio.supTrip.exception.UnknownCampusException;

public interface CampusDao {

	public Campus persist(Campus campus);
	public Campus oneById(Long campusId);
	public List<Campus> all();
}
