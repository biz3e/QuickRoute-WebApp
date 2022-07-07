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
		<h3>Find the most efficient route for your multiple stop trip</h3>
		<form action = "FindRoute">
		<div class = "locations">
		Enter locations (Seperate each location with comma)<br>
		<small>Input your locations in the format: Location name City Country<BR>
		Example:<BR>
		1 Queen St Auckland New Zealand,<BR>
		Sky Tower Auckland New Zealand,<BR>
		Mt Roskill Auckland New Zealand,<BR>
		Hamilton New Zealand
		</small><br>
		<span class="error">${messages.locationsError}</span>
		<textarea required name = "Locations" class = "tb" rows = "5" cols = "50"  placeholder = "Location name City Country, Location name City Country"></textarea>
		<br>
		</div>
		<div class = "startLocation">
		Enter a starting location (Leave blank if not required)<br>
		<span class="error">${messages.startLocationError}</span>
		<input type = "text" class = "tb" size = "40" name = "StartLocation" autocomplete = "off" placeholder = "Location name City Country"><br>
		</div>
		<div class="db">
		<label for="TransportMethod">Transport method: </label><br>
		<select class = "dropbox" name="TransportMethod">
		  <option value="DRIVING">Driving</option>
		  <option value="TRANSIT">Transit</option>
		  <option value="WALKING">Walking</option>
		</select>
		<br>
		<label for="WeightMethod">Calculate trip by: </label><br>
		<select class = "dropbox" name="WeightMethod">
		  <option value="DURATION">Duration</option>
		  <option value="DISTANCE">Distance</option>
		</select>
		</div>
		<input type = "submit" class = "button">
		</form>
	</div>
</body>
</html>