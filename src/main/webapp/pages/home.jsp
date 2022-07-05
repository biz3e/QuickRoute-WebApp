<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>QuickRoute</title>
<link href="/css/homestyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class = "wrapper">
		<h1>Quick Route</h1>
		<h3>Find the most efficient route to visit each location</h3>
		<form action = "FindRoute">
		Enter locations (Seperate each location with comma)<br>
		<span class="error">${messages.locationsError}</span>
		<textarea required name = "Locations" class = "tb" rows = "5" cols = "50"  placeholder = "Name City Country, Name City Country"></textarea><br>
		Enter a starting location (Leave blank if no start location)<br>
		<span class="error">${messages.startLocationError}</span>
		<input type = "text" class = "tb" name = "StartLocation" autocomplete = "off" placeholder = "Name City Country"><br>
		<input type = "submit" class = "button">
		</form>
	</div>
</body>
</html>