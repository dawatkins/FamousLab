<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tiny</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css" />
</head>
<body>
	<div class="caintainer">
		<a href="/complete"><button class="btn btn-primary">Complete
				page</button></a>
		<table class="table">
			<h1>Inventions from Tiny List</h1>
			<thead>
				<tr>
					<th>Name</th>
					<th>Invention</th>
					<th>Year</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tiny" items="${tiny}">
					<tr>
						<td>${tiny.name}</td>
						<td>${tiny.invented}</td>
						<td>${tiny.year}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>