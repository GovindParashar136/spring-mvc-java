<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>Cities</title>

<hr>

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