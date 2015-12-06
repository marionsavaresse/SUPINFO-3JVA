package fr.coolStudio.supTrip.bo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="campus")
@XmlRootElement
public class Campus {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private Long id;
	
	@Basic
	@Column(name = "Name")
	private String campusName;

	@Basic
	@Column(name = "CountryCode")
	private String countryCode;

	@Basic
	@Column(name = "Address")
	private String address;
	@Basic
	@Column(name = "GoogleLink")
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
	
	public String getGoogleLink() {
		return this.googleLink;
	}
	
	public void setGoogleLink(String campusGoogleLink) {
		this.googleLink = campusGoogleLink;
	}
}
