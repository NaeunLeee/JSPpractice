<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:if test="${not empty message}">
			<h1>${message}</h1>
		</c:if>
		<c:if test="${not empty member}">
			${member.id} : ${member.name}
		</c:if>
	</div>
</body>
</html>