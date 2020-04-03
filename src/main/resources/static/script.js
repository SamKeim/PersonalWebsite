function validate(){
  var email = document.getElementById("email");
  var message = document.getElementById("emailFeedback");
  var regex = new RegExp("^(([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+)?$");
  if(!email.value){
	message.style.display = "none";
	email.className = "form-control";
	event.preventDefault();	  
  } else if(regex.test(email.value)){
	message.style.display = "none";
	email.className = "form-control";
  } else {
	message.style.display = "block";
	message.className = "invalid-feedback";
	message.innerText = "Please enter a valid email address.";
	email.className = "form-control is-invalid";
	event.preventDefault();
  }
}

function validateSubmit(){
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var emailFeedback = document.getElementById("emailFeedback");
	var nameFeedback = document.getElementById("nameFeedback");
	var regex = new RegExp("^(([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+)?$");
	if(!email.value){
		emailFeedback.style.display = "block";
		emailFeedback.innerText = "Please enter an email address.";
		emailFeedback.className = "invalid-feedback";
		email.className = "form-control is-invalid";
		event.preventDefault();	  
	} else if(regex.test(email.value)){
		emailFeedback.style.display = "none";
		email.className = "form-control";
	} else {
		emailFeedback.style.display = "block";
		emailFeedback.className = "invalid-feedback";
		emailFeedback.innerText = "Please enter a valid email address.";
		email.className = "form-control is-invalid";
		event.preventDefault();
	}
	
	if(!name.value){
		nameFeedback.style.display = "block";
		nameFeedback.innerText = "Please enter a name.";
		nameFeedback.className = "invalid-feedback";
		name.className = "form-control is-invalid";
		event.preventDefault();
	} else {
		nameFeedback.style.display = "none";
		name.className = "form-control";
	}
}