package io.infinityCode.supTrip.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import io.infinityCode.supTrip.bo.Trip;

import io.infinityCode.supTrip.exception.UnknownTripException;


public class TripDao {

	private static List<Trip> Trips = new ArrayList<Trip>();
	private static Long idSequence = 1L;
	
	private TripDao() { }
	
	/**
	 * Generate an id to the trip and store it in memory
	 * @param trip
	 */
	public static void addTrip(Trip trip) {
		trip.setId(idSequence++);
		Trips.add(trip);
	}
	
	/**
	 * Update a trip
	 * @throws UnknownTripException when the trip doesn't exist
	 * @param trip
	 */
	public static void updateTrip(Trip trip) {
		int index = getTripIndexById(trip.getId());
		if(index > -1) {
			Trips.set(index, trip);
		} else {
			throw new UnknownTripException(trip.getId());
		}
	}
	
	/**
	 * Find a trip by id
	 * @throws UnknownTripException when no trip in memory have the id
	 * @param the id of the trip to find
	 * @return the trip corresponding to the id
	 */
	public static Trip findTripById(Long id) {
		int index = getTripIndexById(id);
		if(index > -1) {
			Trip trip = Trips.get(index);
			return trip;
		}
		throw new UnknownTripException(id);
	}
	
	/**
	 * @return an unmodifiable list of all trips stored in memory
	 */
	public static List<Trip> getAllTrip() {
		return Collections.unmodifiableList(Trips);
	}
	
	/**
	 * Remove a trip from the memory
	 * @param the trip to remove
	 * @throws UnknownTripException when the trip doesn't exist in memory
	 */
	public static void removeTrip(Trip trip) {
		removeTrip(trip.getId());
	}
	
	/**
	 * Remove a trip from the memory
	 * @param the id of the trip to remove
	 * @throws UnknownTripException when the trip doesn't exist in memory
	 */
	public static void removeTrip(Long id) {
		int index = getTripIndexById(id);
		if(index > -1) {
			Trips.remove(index);
		} else {
			throw new UnknownTripException(id);
		}
	}
	
	private static int getTripIndexById(Long id) {
		for (int i = 0; i < Trips.size(); i++) {
			Trip trip = Trips.get(i);
			if(trip.getId().equals(id)) {
				return i;
			}
		}
		return -1;
	}

}
