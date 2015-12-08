package io.infinityCode.supTrip.bo;

public class Trip {
	private Long id;
	private Long departureCampusID;
	private Long destinationCampusID;
	private float price;
	private float date;
		
	public Trip() { }
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getDepartureCampusID() {
		return departureCampusID;
	}

	public void setDepartureCampusID(Long departureCampusID) {
		this.departureCampusID = departureCampusID;
	}

	public Long getDestinationCampusID() {
		return destinationCampusID;
	}

	public void setDestinationCampusID(Long destinationCampusID) {
		this.destinationCampusID = destinationCampusID;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getDate() {
		return date;
	}

	public void setDate(float date) {
		this.date = date;
	}	
}
