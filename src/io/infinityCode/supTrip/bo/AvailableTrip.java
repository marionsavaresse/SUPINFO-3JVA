package io.infinityCode.supTrip.bo;

import java.io.Serializable;

public class AvailableTrip implements Serializable{
	private static final long serialVersionUID = -6508844872643488786L;
	
	private int departure_id;

	private String departure_name;

	private int arrival_id;

	private String arrival_name;

	public AvailableTrip() { }
	public AvailableTrip(int di, String dn, int ai, String an)
	{
		this.departure_id = di;
		this.departure_name = dn;
		this.arrival_id = ai;
		this.arrival_name = an;
	}

	public int getDeparture_id() {
		return departure_id;
	}

	public void setDeparture_id(int departure_id) {
		this.departure_id = departure_id;
	}

	public String getDeparture_name() {
		return departure_name;
	}

	public void setDeparture_name(String departure_name) {
		this.departure_name = departure_name;
	}

	public int getArrival_id() {
		return arrival_id;
	}

	public void setArrival_id(int arrival_id) {
		this.arrival_id = arrival_id;
	}

	public String getArrival_name() {
		return arrival_name;
	}

	public void setArrival_name(String arrival_name) {
		this.arrival_name = arrival_name;
	}
}
