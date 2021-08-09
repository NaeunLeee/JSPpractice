<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/menu.css">
</head>
<body>
	<div align="center">
		<div>
			<br />
		</div>
		<div>
			<!-- 메뉴부분 -->
			<ul>
				<li><a class="active" href="home.do">Home</a></li>
				<c:if test="${ empty author }">
					<li><a href="loginForm.do">Login</a></li>
				</c:if>
				<c:if test="${ not empty author }">
					<li><a href="logout.do">LogOut</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Product</a></li>
					<li><a href="#">Service</a></li>
					<c:if test="${ author == 'ADMIN' }">
						<li><a href="#">Members</a></li>
					</c:if>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>