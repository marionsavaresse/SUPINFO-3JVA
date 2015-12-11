function toggleClassAttribut(node, wantedClass)
{
    node.className.match(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", ''))
    ? node.className = node.className.replace(new RegExp("[^|\\s]?(" + wantedClass + ")[!\\S]?", 'g'), '').replace(new RegExp("(^\\s)", ''), '')
    : node.className += " " + wantedClass;
}

function validField(number)
{
	switch(number) {
    case "1":
    	lastName = document.getElementById("familyName");
    	if (lastName.value == ""){
    		spanLastName = document.getElementById("spanLastName");
    		spanLastName.innerHTML = "You must specify your last name.";
    		lastName.className = "inputProfile input long wrong";		
    		return false;
    	}
    	else {
    		spanLastName.innerHTML = "";
    		lastName.className = "inputProfile input long";
    		return true;
    	}
        break;
        
    case "2":
    	firstName = document.getElementById("firstName");
    	if (firstName.value == ""){
    		spanFirstName = document.getElementById("spanFirstName");
    		spanFirstName.innerHTML = "You must specify your first name.";
    		firstName.className = "inputProfile input long wrong";		
    		return false;
    	}
    	else {
    		spanFirstName.innerHTML = "";
    		firstName.className = "inputProfile input long";
    		return true;
    	}
        break;  
        
    case "3":
    	email = document.getElementById("email");
    	if ( ((email.value.match("^[A-Za-z0-9+_.-]+@(.+)$")) == "") || ((email.value.match("^[A-Za-z0-9+_.-]+@(.+)$")) == null) ){
    		spanEmail = document.getElementById("spanEmail");		
    		spanEmail.innerHTML = "Your must specify a correct email address.";
    		email.className = "inputProfile input long wrong";		
    		return false;
    	}
    	else {
    		spanEmail.innerHTML = "";
    		email.className = "inputProfile input long";	
    		return true;
    	}
        break; 
        
    case "6":
    	bool = true;
    	password = document.getElementById("password pwd");
    	if (password.value.length < 6)
    	{
    		spanPassword = document.getElementById("spanPassword");	
    		spanPassword.innerHTML = "Your password must contain six characters.";
    		password.className = "inputProfile input long wrong";
    		bool = false;
    	}
    	else {
    		spanPassword.innerHTML = "";
    		password.className = "inputProfile input long";	
    	}
    	
    	passwordConf = document.getElementById("passwordConfirmation");
    	if ((passwordConf.value != "") && (passwordConf.value != password.value))
    	{
    		spanPasswordConf = document.getElementById("spanPasswordConf");	
    		spanPasswordConf.innerHTML = "Passwords do not match.";
    		passwordConf.className = "inputProfile input long wrong";
    		spanPassword.innerHTML = ".";
    		spanPassword.style.visibility = "hidden";
    		bool = false;
    	}
    	else {
    		spanPasswordConf.innerHTML = "";
    		passwordConf.className = "inputProfile input long";	
    	}
    	return bool;
        break;       
        
    default:
    	return true;
	}
}

function switchEdit(btn, number)
{
    var editing = Boolean(btn.innerHTML.toLowerCase() == "ok");
    if(editing)
    {
    	if (validField(number)) {
            btn.innerHTML = "Edit";
            toggleClassAttribut(btn.parentNode, "editing");	
            btn.parentNode.children[2].disabled = true;
            if (number == 6) {
            	document.getElementById("passwordConfirmation").value = "";
            	document.getElementById("tdPasswordConf").style.display = "none";
            }
        }
    	else {
    		btn.parentNode.children[2].disabled = false;
    	}
    }
    else
    {
        btn.innerHTML = "Ok";
        toggleClassAttribut(btn.parentNode, "editing");
        btn.parentNode.children[2].disabled = false;
        if (number == 6) {
        	document.getElementById("tdPasswordConf").style.display = "block";
        }
    }

  
}

function validForm(form)
{
	td = document.getElementsByTagName('td');	
	for(var i=0; i < td.length; i++)
	{
		if (td[i].className == " editing") {
			spanButton = document.getElementById("spanButton");
			spanButton.innerHTML = "You have to validate your modifications.";
			return false;
		}
	}	
	
    for(var i=0; i < form.elements.length; i++)
        if(form.elements[i].hasAttribute('disabled'))
            document.getElementById(form.elements[i].id).disabled = false;
	
    return true;
}
