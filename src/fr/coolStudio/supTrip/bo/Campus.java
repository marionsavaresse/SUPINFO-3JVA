package fr.coolStudio.supTrip.bo;

public class Campus {
	private Long id;
	private String campusName;
	private String countryCode;
	private String address;
	private float longitute;
	private float latitude;
	private String googleLink;
		
	public Campus() { }
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long Id) {
		this.id = Id;
	}
	
	public String getCountryCode() {
		return this.countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	
	public String getCampusName() {
		return this.campusName;
	}

	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}
		
	public String getAddress() {
		return this.address;
	}
	
	public void setAddress(String campusAddress) {
		this.address = campusAddress;
	}

	public float getLongitute() {
		return this.longitute;
	}
	
	public void setLongitude(float campusLongitute) {
		this.longitute = campusLongitute;
	}
	
	public float getLatitude() {
		return this.latitude;
	}
	
	public void setLatitude(float campusLatitude) {
		this.latitude = campusLatitude;
	}
	
	public String getGoogleLink() {
		return this.googleLink;
	}
	
	public void setGoogleLink(String campusGoogleLink) {
		this.googleLink = campusGoogleLink;
	}
}
