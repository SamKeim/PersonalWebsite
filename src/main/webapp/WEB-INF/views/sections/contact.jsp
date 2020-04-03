<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container" id="contact">
	<h1>Contact</h1>
	<div class="row">
		<div class="col">
			<h3>Get in Touch</h3>
				<div class="form-group" onsubmit="validateSubmit()">
					<form action="post">
					<label for="name">Name</label>
					<input type="text" class="form-control" id="name"
					placeholder="Enter name">
					<div id="nameFeedback"></div>
					
					<label for="email">Email Address</label>
					<input type="text" class="form-control" id="email"  onchange="validate()"
					aria-describedby="emailHelp" placeholder="Enter email">
					<div id="emailFeedback"></div>
				    
				    <label for="body">Message</label>
   				  	<textarea class="form-control" id="message" rows="3" spellcheck="false"></textarea>
					<button type="submit" class="btn btn-primary mx-2">Let's talk!</button>
				</form>
			</div>
		</div>
		<div class="col">
			<h3>Let's Connect</h3>
			<div class="container-fluid centervert ml-3">
				<a href="https://www.github.com/samkeim" style="font-size: 4em;" class="text-primary"><i class="fab fa-github mx-2"></i></a>
				<a href="https://www.github.com/samkeim" style="font-size: 1.5em;" class="text-primary">GitHub</a>
			</div>
			<div class="container-fluid centervert ml-3">
				<a href="https://www.linkedin.com/in/samkeim" class="text-primary" style="font-size: 4em;"><i class="fab fa-linkedin mx-2"></i></a>
				<a href="https://www.linkedin.com/in/samkeim" class="text-primary" style="font-size: 1.5em;">LinkedIn</a>
			</div>
			<div class="container-fluid centervert ml-3">
				<a href="mailto:SamTheEnby@gmail.com" style="font-size: 4em;" class="text-primary"><i class="fas fa-envelope mx-2"></i></a>
				<a href="mailto:SamTheEnby@gmail.com" style="font-size: 1.5em;" class="text-primary">Email</a>
			</div>
		</div>
	</div>
</div>
