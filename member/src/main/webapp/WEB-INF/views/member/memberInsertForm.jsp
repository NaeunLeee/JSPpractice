<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>회 원 가 입</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="memberInsert.do" method="post">
				<div>
					<table border="1" rules="all">
						<tr>
							<th width="150"  bgcolor="lightblue">아 이 디</th>
							<td width="400">
								<input type="text" id="id" name="id" placeholder="아이디 입력" required="required">
							</td>
						</tr>
						<tr>
							<th width="150"  bgcolor="lightblue">패스워드</th>
							<td width="400">
								<input type="password" id="password" name="password" placeholder="패스워드 입력" required="required">
							</td>
						</tr>
						<tr>
							<th width="150"  bgcolor="lightblue">패스워드 확인</th>
							<td width="400">
								<input type="password" id="passcheck" name="passcheck" placeholder="패스워드 확인" required="required">
							</td>
						</tr>
						<tr>
							<th width="150"  bgcolor="lightblue">이 름</th>
							<td width="400">
								<input type="text" id="name" name="name" placeholder="이름 입력" required="required">
							</td>
						</tr>
						<tr>
							<th width="150"  bgcolor="lightblue">나 이</th>
							<td width="400">
								<input type="text" id="age" name="age" placeholder="나이 입력" required="required">
							</td>
						</tr>
						<tr>
							<th width="150"  bgcolor="lightblue">취 미</th>
							<td width="400">
								<input type="checkbox" id="hobbies" name="hobbies" value="등산">등산
								<input type="checkbox" id="hobbies" name="hobbies" value="게임">게임
								<input type="checkbox" id="hobbies" name="hobbies" value="영화감상">영화감상
								<input type="checkbox" id="hobbies" name="hobbies" value="음악감상">음악감상
								<input type="checkbox" id="hobbies" name="hobbies" value="낚시">낚시
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취 소">
				</div>
			</form>
		</div>
	</div>
</body>
</html>