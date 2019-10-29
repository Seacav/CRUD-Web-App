<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/user-form.css" />" />
	<title>User Form</title>
</head>
<body>
	<div class="block1">
		<div class="block2">
			<form:form action="processForm" modelAttribute="user" id="userForm">
				<form:hidden path="id"/>
				<div class="form-group">
					<label for="first_name">First name</label>
					<form:input path="firstName" class="form-control" id="first_name"/>
				</div>
				<div class="form-group">
					<label for="last_name">Last name</label>
					<form:input path="lastName" class="form-control" id="last_name"/>
				</div>
				<div class="form-group">
					<label for="country">Country</label>
					<form:input path="country" class="form-control" id="country"/>
				</div>
				<div class="form-group">
					<label for="phoneNumber">Phone number</label>
					<form:input path="phoneNumber" class="form-control" id="phoneNumber"/>
				</div>
				<input type="submit" value="Submit"  class="btn btn-primary"/>
			</form:form>
		</div>
	</div>
</body>
</html>