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
		<h3>Find the fastest route for your multistop trip by car</h3>
		<form action = "FindRoute">
		Enter locations (Seperate each location with comma)<br>
		Input your locations in the format: Suburb/Town/Address City Country<br>
		<span class="error">${messages.locationsError}</span>
		<textarea required name = "Locations" class = "tb" rows = "5" cols = "50"  placeholder = "Suburb/Town/Address City Country, Suburb/Town/Address City Country"></textarea><br>
		Enter a starting location (Leave blank if not required)<br>
		<span class="error">${messages.startLocationError}</span>
		<input type = "text" class = "tb" size = "40" name = "StartLocation" autocomplete = "off" placeholder = "Suburb/Town/Address City Country"><br>
		<input type = "submit" class = "button">
		</form>
	</div>
</body>
</html>