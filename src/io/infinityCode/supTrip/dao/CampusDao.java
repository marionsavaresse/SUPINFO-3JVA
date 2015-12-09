package io.infinityCode.supTrip.dao;

import java.util.List;

import io.infinityCode.supTrip.bo.Campus;

public interface CampusDao {
	public Campus persist(Campus campus);
	public Campus oneById(Long campusId);
	public List<Campus> all();
	public List<String> allCampusName();
}
