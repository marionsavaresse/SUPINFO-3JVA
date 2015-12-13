package io.infinityCode.supTrip.entity;

import java.io.Serializable;

public class AvailableTrip implements Serializable
{
	private static final long serialVersionUID = -6508844872643488786L;
	
	public Campus departure;
	public Campus arrival;

	public AvailableTrip(){}
	public AvailableTrip(Campus dep, Campus des)
	{
		this.departure = dep;
		this.arrival = des;
	}
}
