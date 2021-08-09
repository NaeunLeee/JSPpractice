<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<div>
			<h1>로 그 인</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="login.do" method="post">
				<table border="1">
					<tr>
						<th width="150">아 이 디</th>
						<td width="200"><input type="text" id="id" name="id"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" id="password" name="password"></td>
					</tr>
				</table>
				<br>
				<button type="submit">로그인</button>
				&nbsp;&nbsp;&nbsp;
				<button type="reset">취 소</button>
			</form>
		</div>
	</div>
</body>
</html>