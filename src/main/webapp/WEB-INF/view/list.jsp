<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<style>
		.addButton {
		margin: 5px;
		}
	</style>
	
	<title>Application</title>
</head>
<body>
	<h2>User Tracker - Home Page</h2>
	<hr>
	<div class="addButton">
		<form:form action="addUser" method="get">
			<button class="btn btn-success" type="submit" >Create new user</button>
		</form:form>
	</div>
	<br>
	<table class="table table-hover" >
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Country</th>
				<th>Phone Number</th>
				<th>Operations</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="temp" items="${listOfUsers}" >
				<tr>
					<td>${temp.firstName}</td>
					<td>${temp.lastName}</td>
					<td>${temp.country}</td>
					<td>${temp.phoneNumber}</td>
					<td>
						<div class="input-group mb-1">
						<form:form action="edit?id=${temp.id}">
							<button class="btn btn-warning btn-sm" type="submit">Edit</button>
						</form:form>&nbsp;&nbsp;
						<form:form action="delete?id=${temp.id}">
							<button class="btn btn-danger btn-sm" type="submit">Delete</button>
						</form:form>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>