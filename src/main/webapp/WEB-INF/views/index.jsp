<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/496dae1c3c.js" crossorigin="anonymous"></script>	
<%@ include file="partials/header.jsp"%>
<link href="style.css" rel="stylesheet" type="text/css">
<title>Sam Keim</title>
</head>
<body>
	<div class="container-fluid pt-3">
		<div class="jumbotron border border-dark">
			<h1 class="text-center display-3">Hi, I'm Sam Keim.</h1>
		</div>
		<%@ include file="sections/about.jsp"%>
		<%@ include file="sections/portfolio.jsp"%>
		<%@ include file="sections/resume.jsp"%>
		<%@ include file="sections/contact.jsp"%>
	</div>
</body>
</html>