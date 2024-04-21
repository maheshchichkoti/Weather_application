<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Weather API!</title>

<link rel = "stylesheet" href = "/css/scroll_behaviour.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">

</head>
<body>

	<!-- Search weather -->

	<div id = "weather_search" class = "card-body" align = "center">
	
		<h3>Weather API: Get the current weather for your city.</h3><br/>
	
		<div class = "col-5">
			
			<form action = "" method = "get">
				<input class = "form-control" name = "city" type = "text"  placeholder = "Your city" required/><br/>
				<input class = "form-control" id = "country" name = "country" type = "text" value = "" placeholder = "Your country's ISO code (not required)"/><br/>
				<button type = "submit" formaction = "/current/weather" name = "current" class = "btn btn-success btn-sm">Find out the current weather!</button>
				<button type = "submit" formaction = "/five_day/weather" name = "five_day" class = "btn btn-info btn-sm">Find out 5 day forecast!</button>
			</form>
			
		</div>
	
	</div>
	
	<c:if test = "${error}">
		<p style = "color: red; text-align: center;">Invalid entry.</p>
	</c:if>
	
	<script src = "/js/search-iso-codes.js"></script>

</body>
</html>