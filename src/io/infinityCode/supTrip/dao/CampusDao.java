package io.infinityCode.supTrip.dao;

import java.util.List;

import io.infinityCode.supTrip.entity.Campus;

public interface CampusDao
{
	public Campus persist(Campus campus);

	public Campus oneById(int campusId);
	public Campus oneByName(String campusName);

	public List<Campus> all();
	public List<Campus> allExceptGivenCampus(String search);

	public List<String> allCampusName();

	public Long countCampuses();
}
