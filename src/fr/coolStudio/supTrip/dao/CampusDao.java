package fr.coolStudio.supTrip.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import fr.coolStudio.supTrip.bo.Campus;

import fr.coolStudio.supTrip.exception.UnknownCampusException;

public class CampusDao {

	private static List<Campus> Campuses = new ArrayList<Campus>();
	private static Long idSequence = 1L;
	
	private CampusDao() { }
	
	/**
	 * Generate an id to the campus and store it in memory
	 * @param campus
	 */
	public static void addCampus(Campus campus) {
		campus.setId(idSequence++);
		Campuses.add(campus);
	}
	
	/**
	 * Update a campus
	 * @throws UnknownCampusException when the campus doesn't exist
	 * @param campus
	 */
	public static void updateCampus(Campus campus) {
		int index = getCampusIndexById(campus.getId());
		if(index > -1) {
			Campuses.set(index, campus);
		} else {
			throw new UnknownCampusException(campus.getId());
		}
	}
	
	/**
	 * Find a campus by id
	 * @throws UnknownCampusException when no campus in memory have the id
	 * @param the id of the campus to find
	 * @return the campus corresponding to the id
	 */
	public static Campus findCampusById(Long id) {
		int index = getCampusIndexById(id);
		if(index > -1) {
			Campus campus = Campuses.get(index);
			return campus;
		}
		throw new UnknownCampusException(id);
	}
	
	/**
	 * @return an unmodifiable list of all campuss stored in memory
	 */
	public static List<Campus> getAllCampus() {
		return Collections.unmodifiableList(Campuses);
	}
	
	/**
	 * Remove a campus from the memory
	 * @param the campus to remove
	 * @throws UnknownCampusException when the campus doesn't exist in memory
	 */
	public static void removeCampus(Campus campus) {
		removeCampus(campus.getId());
	}
	
	/**
	 * Remove a campus from the memory
	 * @param the id of the campus to remove
	 * @throws UnknownCampusException when the Campus doesn't exist in memory
	 */
	public static void removeCampus(Long id) {
		int index = getCampusIndexById(id);
		if(index > -1) {
			Campuses.remove(index);
		} else {
			throw new UnknownCampusException(id);
		}
	}
	
	private static int getCampusIndexById(Long id) {
		for (int i = 0; i < Campuses.size(); i++) {
			Campus campus = Campuses.get(i);
			if(campus.getId().equals(id)) {
				return i;
			}
		}
		return -1;
	}

}
