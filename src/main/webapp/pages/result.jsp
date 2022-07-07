<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<link href="/css/resultstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class = "wrapper">
	<h3>Most efficient route by ${transportMethod}:</h3>
		<c:forEach var="location" items="${path}" varStatus="count">
			${count.count}. ${location}<BR>
			<c:out value="${pathCosts[count.index]}"/><BR>
		</c:forEach>
		${totalCost}
		<form action = "/">
		<button class="button" type="submit">Reset locations</button>
		</form>
		
	</div>
</body>
</html>