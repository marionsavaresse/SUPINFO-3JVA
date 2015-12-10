function validForm()
{
	bool = true;
	lastName = document.getElementById("lastName");
	firstName = document.getElementById("firstName");
	IDBooster = document.getElementById("idBooster");
	email = document.getElementById("email");
	campusName = document.getElementById("campusName");
	currentSchoolYear = document.getElementById("currentSchoolYear");
	password = document.getElementById("password pwd");
	passwordConf = document.getElementById("passwordConf");
	
	if (lastName.value == ""){
		spanLastName = document.getElementById("spanLastName");
		spanLastName.innerHTML = "You must specify your last name.";
		lastName.className = lastName.className + " wrong";		
		bool = false;
	}
	else {
		spanLastName.innerHTML = "";
		lastName.className = "input long";	
	}
	
	if (firstName.value == "")
	{
		spanFirstName = document.getElementById("spanFirstName");	
		spanFirstName.innerHTML = "You must specify your first name.";
		firstName.className = firstName.className + " wrong";
		bool = false;
	}
	else {
		spanFirstName.innerHTML = "";
		firstName.className = "input long";	
	}
	
	if ( (((IDBooster.value.match("^[0-9]*$")) == "") || ((IDBooster.value.match("^[0-9]*$")) == null)) || (IDBooster.value.length != 6) ){
		spanIDBooster = document.getElementById("spanIDBooster");		
		spanIDBooster.innerHTML = "Your ID Booster must be composed of 6 numbers.";
		IDBooster.className = IDBooster.className + " wrong";		
		bool = false;
	}
	else {
		spanIDBooster.innerHTML = "";
		IDBooster.className = "input long";	
	}
	
	if ( ((email.value.match("^[A-Za-z0-9+_.-]+@(.+)$")) == "") || ((email.value.match("^[A-Za-z0-9+_.-]+@(.+)$")) == null) ){
		spanEmail = document.getElementById("spanEmail");		
		spanEmail.innerHTML = "Your must specify a correct email address.";
		email.className = email.className + " wrong";		
		bool = false;
	}
	else {
		spanEmail.innerHTML = "";
		email.className = "input long";	
	}
	
	if (campusName.value == "")
	{
		spanCampusName = document.getElementById("spanCampusName");	
		spanCampusName.innerHTML = "You must specify your campus name.";
		campusName.className = campusName.className + " wrong";
		bool = false;
	}
	else {
		spanCampusName.innerHTML = "";
		campusName.className = "dropdown long";	
	}
	
	if (currentSchoolYear.value == "")
	{
		spanCurrentSchoolYear = document.getElementById("spanCurrentSchoolYear");	
		spanCurrentSchoolYear.innerHTML = "You must specify your current school year.";
		currentSchoolYear.className = currentSchoolYear.className + " wrong";
		bool = false;
	}
	else {
		spanCurrentSchoolYear.innerHTML = "";
		currentSchoolYear.className = "dropdown long";	
	}
	
	if (password.value.length < 6)
	{
		spanPassword = document.getElementById("spanPassword");	
		spanPassword.innerHTML = "Your password must contain six characters.";
		password.className = password.className + " wrong";
		bool = false;
	}
	else {
		spanPassword.innerHTML = "";
		password.className = "input long";	
	}
	
	if (passwordConf.value != password.value)
	{
		spanPasswordConf = document.getElementById("spanPasswordConf");	
		spanPasswordConf.innerHTML = "Passwords do not match.";
		passwordConf.className = passwordConf.className + " wrong";
		bool = false;
	}
	else {
		spanPasswordConf.innerHTML = "";
		passwordConf.className = "input long";	
	}
	
	return bool;
}