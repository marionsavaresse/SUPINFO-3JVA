package io.infinityCode.supTrip.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="campuses")
@XmlRootElement
public class Campus {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
	@Basic
	@Column(name = "name")
	private String campusName;

	@Basic
	@Column(name = "countryCode")
	private String countryCode;

	@Basic
	@Column(name = "address")
	private String address;
		
	public Campus() { }
	
	public int getId() {
		return this.id;
	}

	public void setId(int Id) {
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
}
