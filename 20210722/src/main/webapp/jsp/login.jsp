<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<%-- 액션 태그 --%>
<jsp:include page="header.jsp" />
<%-- <%@include file="header.jsp"%>와 같은 결과 --%>
<body>
	<div align="center">
		<div>
			<h1>로그인</h1>
		</div>
		<div>
			<!-- <form id="frm" name="frm" action="LoginCheck" method="get"> -->
			<form id="frm" name="frm" action="LoginCheck.jsp" method="post">
				<table border="1">
					<tr>
						<th width="200">아 이 디</th>
						<td width="300"><input type="text" id="id" name="id"></td>
					</tr>
					<tr>
						<th width="200">패스워드</th>
						<td width="300"><input type="password" id="password" name="password"></td>
					</tr>
				</table><br/>
				<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" value="취소">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>