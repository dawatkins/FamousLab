<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Complete</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css" />
</head>
<body>
	<div class="caintainer">
		<a href="/"><button class="btn btn-primary">Tiny page</button></a>
		<table class="table">
			<h1>Inventions from Complete List</h1>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Innovation</th>
					<th>Year</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="complete" items="${complete}">
					<tr>
						<td>${complete.firstName}</td>
						<td>${complete.lastName}</td>
						<td>${complete.innovation}</td>
						<td>${complete.year}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>