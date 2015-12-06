package fr.coolStudio.supTrip.dao;

import java.util.List;

import fr.coolStudio.supTrip.bo.Campus;

public interface CampusDao {
	public Campus persist(Campus campus);
	public Campus oneById(Long campusId);
	public List<Campus> all();
}
