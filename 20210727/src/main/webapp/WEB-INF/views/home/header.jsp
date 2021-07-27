<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/menu.css">
<meta charset="UTF-8">
<title>홈</title>
</head>
<body>
	<div align="center">
		<div>
			<ul>
				<li><a class="active" href="home.do">Home</a></li>
				<c:if test="${empty name }">
					<li><a href="loginForm.do">Login</a></li>
				</c:if>
				<c:if test="${not empty name }">
					<li><a href="logout.do">LogOut</a></li>
					<li><a href="#contact">Contact</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#about">Product</a></li>
					<li><a href="#about">Service</a></li>
					<c:if test="${author eq 'ADMIN'}">
						<li><a href="#about">Members</a></li>
					</c:if>
				</c:if>

			</ul>
		</div>
	</div>
</body>
</html>