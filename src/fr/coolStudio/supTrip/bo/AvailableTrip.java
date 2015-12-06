package fr.coolStudio.supTrip.bo;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="availabletrips")
@XmlRootElement
public class AvailableTrip implements Serializable{
	private static final long serialVersionUID = -6508844872643488786L;

	@Id
	private int line;
	
	@Basic
	private int departure_id;

	@Basic
	private String departure_name;

	@Basic
	private int arrival_id;

	@Basic
	private String arrival_name;

	public AvailableTrip() { }

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
