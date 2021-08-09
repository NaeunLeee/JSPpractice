<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
	<script>
		function getRecord(n) {
			frm.sNo.value = n;
			frm.submit();
		}
	</script>
</head>
<body>
	<div align="center">
		<table border="1" rules="all" cellpadding="15">
			<tr bgcolor="lightblue">
				<th>아 이 디</th>
				<th>패스워드</th>
				<th>이 름</th>
				<th>나 이</th>
				<th>취 미</th>
				<th>권 한</th>
				<th>상 태</th>
			</tr>
			<c:forEach var="member" items="${list}">
				<tr align="center" onclick="getRecord(${member.id})">
					<td>${member.id}</td>
					<td>${member.password}</td>
					<td>${member.name}</td>
					<td>${member.age}</td>
					<td>${member.hobby}</td>
					<td>${member.author}</td>
					<td>${member.state}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<form id="frm" action="memberSearch.do" method="post">
			<input type="hidden" id="id" name="id">
		</form>
	</div>
</body>
</html>