<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quick Route - Results</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
<link href="/css/style.css" rel="stylesheet" type="text/css">
<script src="../main.js"></script>
<script type="text/javascript">
	function processResults() {
		let path = new Array();
		let pathCosts = new Array();
		<c:forEach var="location" items="${path}" varStatus="count">
		path.push("${location}");
		</c:forEach>
		
		<c:forEach var="cost" items="${pathCosts}" varStatus="count">
		pathCosts.push("${cost}");
		</c:forEach>
		
		let transportMethod = "${transportMethod}";
		let totalCosts = "${totalCost}";
		
		showResults(path, transportMethod, pathCosts, totalCosts);
	}
</script>
</head>
<body onload="${func.results}${func.error}">
	<!-- Navbar -->
	<header>
		<div class="navbar">
			<div class="container flex">
				<h1 id="logo"><a href="/">Quick Route</a></h1>
			</div>
		</div>
	</header>
	<main>
		<!-- Main -->
		<div class="main">
			<div class="container flex">
				<div id="app-name">
					<h1>Multi-stop trip planner</h1>
					<h4>Generates the most efficient route to visit each location</h4>
				</div>
					<div id="results">
					</div>
			</div>
		</div>
	</main>
	<!-- Footer -->
	<div class="footer">
		<small>&copy 2022 Ben Zhou. All Rights Reserved.</small>
	</div>
</body>
</html>