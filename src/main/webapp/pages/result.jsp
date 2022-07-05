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
	<h3>The most efficient route is:</h3>
		<table>
			<c:forEach var="location" items="${path}">
				<tr>
				<td>${location}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>