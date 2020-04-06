<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
	<a class="navbar-brand" href="#">Sam Keim</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="#about">About</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#resume">Resume</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
			</li>
		</ul>
		<a href="https://www.github.com/samkeim" style="font-size: 2em; color: white;"><i class="fab fa-github mx-2"></i></a>
		<a href="https://www.linkedin.com/in/samkeim" style="font-size: 2em; color: white;"><i class="fab fa-linkedin mx-2"></i></a>
	</div>
</nav>
<c:if test="${message ne null}">
	<div class="container-fluid">
		<div class="alert alert-dismissible alert-success" id="message">
		  <button type="button" class="close" data-dismiss="alert" onclick="closeMessage()">&times;</button>
		  <strong>Message sent!</strong> Thank you for reaching out.
		</div>
	</div>
</c:if>