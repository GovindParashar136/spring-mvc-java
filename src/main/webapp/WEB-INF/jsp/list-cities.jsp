
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>


<meta charset="ISO-8859-1">

<title>Cities</title>


</head>

<body>

	<h2>Cities</h2>

	<hr>

	<table>
		<tr>
			<th>City Name</th>
			<th>Country</th>
		</tr>

		<!-- loop over and print our customers -->
		<c:forEach var="tempCustomer" items="${cities}">
			<tr>
				<td>${tempCustomer.cityName}</td>
			</tr>
		</c:forEach>
	</table>

</body>

</html>