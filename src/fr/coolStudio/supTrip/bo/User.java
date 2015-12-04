package fr.coolStudio.supTrip.bo;

public class User {
	private Long idBooster;
	private String name;
	private String familyName;
	private String email;
	private String password;
	private Long campusID;
	private int currentSchoolYear; // from 1 to 5
		
	public User() { }

	public Long getIdBooster() {
		return idBooster;
	}

	public void setIdBooster(Long idBooster) {
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

	public Long getCampusID() {
		return campusID;
	}

	public void setCampusID(Long campusID) {
		this.campusID = campusID;
	}

	public int getCurrentSchoolYear() {
		return currentSchoolYear;
	}

	public void setCurrentSchoolYear(int currentSchoolYear) {
		this.currentSchoolYear = currentSchoolYear;
	}
	
	
}