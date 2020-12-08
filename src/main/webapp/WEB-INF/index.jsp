<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>The Code</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>

	<body class="bg-info">
		<div class="col-6 mx-auto">
			<form method="POST" action="/submitAnswer">
				<h3 class="col-12">What is the code?</h3>
				<div class="col-12">
					<input type="text" name="answer">
					<button>Submit</button>
				</div>
			</form>
			<p id="error"><c:out value="${error}"/></p>
		</div>
	</body>
</html>