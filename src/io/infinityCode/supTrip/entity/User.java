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
@Table(name="users")
@XmlRootElement
public class User {

	@Id
	@Column(name = "campusId")
	private int idBooster;

	@Basic
	@Column(name = "password")
	private String password;
	
	@Basic
	@Column(name = "currentYear")
	private String currentSchoolYear; 

	@Basic
	@Column(name = "email")
	private String email;

	@Basic
	@Column(name = "firstName")
	private String name;

	@Basic
	@Column(name = "lastName")
	private String familyName;

	@Basic
	@Column(name = "campus")
	private String campusName;
		
	public User() { }
	
	public User(int _idBooster ,String _name,String _familyName,String _email, String _password, String _campusName,String _currentSchoolYear){
		setIdBooster(_idBooster);
		setName(_name);
		setFamilyName(_familyName);
		setEmail(_email);
		setPassword(_password);
		setCampusName(_campusName);
		setCurrentSchoolYear(_currentSchoolYear);
	}

	public int getIdBooster() {
		return idBooster;
	}

	public void setIdBooster(int idBooster) {
		this.idBooster = idBooster;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCampusName() {
		return campusName;
	}

	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}

	public String getCurrentSchoolYear() {
		return currentSchoolYear;
	}

	public void setCurrentSchoolYear(String currentSchoolYear) {
		this.currentSchoolYear = currentSchoolYear;
	}
	
	
}