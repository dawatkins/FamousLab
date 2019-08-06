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
	<a href="/"><button class="btn btn-primary">Tiny page</button></a>
	<c:forEach items="${complete}" var="complete">
		<ul>

			<li>First Name: ${ complete.firstName }</li>
			<li>Last Name: ${ complete.lastName }</li>
			<li>Innovation: ${ complete.innovation }</li>
			<li>Year: ${ complete.year }</li>

		</ul>
	</c:forEach>
</body>
</html>