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
	<a href="/complete"><button class="btn btn-primary">Complete page</button></a>
	<c:forEach items="${tiny}" var="tiny">
		<ul>

			<li>Name: ${ tiny.name }</li>
			<li>Invention: ${ tiny.invented }</li>
			<li>Year: ${ tiny.year }</li>

		</ul>
	</c:forEach>
</body>
</html>