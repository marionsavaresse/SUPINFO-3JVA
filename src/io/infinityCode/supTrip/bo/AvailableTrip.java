package io.infinityCode.supTrip.bo;

import java.io.Serializable;

public class AvailableTrip implements Serializable{
	private static final long serialVersionUID = -6508844872643488786L;
	
	private Campus departure;
	private Campus arrival;

	public AvailableTrip() { }
	public AvailableTrip(Campus dep, Campus des)
	{
		this.setDeparture(dep);
		this.setArrival(des);
	}

	public Campus getDeparture() {
		return departure;
	}
	public void setDeparture(Campus departure) {
		this.departure = departure;
	}
	public Campus getArrival() {
		return arrival;
	}
	public void setArrival(Campus arrival) {
		this.arrival = arrival;
	}
}
