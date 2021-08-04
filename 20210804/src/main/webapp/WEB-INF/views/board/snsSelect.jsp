<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SNS 게시글 및 댓글 조회</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 조회</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>글번호</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>제목</th>
					<th>내용</th>
					<th>댓글수</th>
				</tr>
				<tr>
					<td>${list[0].SNo}</td>
					<td>${list[0].SWriter}</td>
					<td>${list[0].SDate}</td>
					<td>${list[0].STitle}</td>
					<td>${list[0].SContents}</td>
					<td>${list[0].SAno}</td>
				</tr>
			</table>
			<h3>댓글</h3>
			<table border="1">
				<tr>
					<th>댓글번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>날짜</th>
				</tr>
				<c:forEach var="comment" items="${list}">
				<tr>
					<td>${comment.CNo}</td>
					<td>${comment.CName}</td>
					<td>${comment.CSubject}</td>
					<td>${comment.CDate}</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>