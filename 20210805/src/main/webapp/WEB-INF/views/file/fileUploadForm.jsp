<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드 폼</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>파일 등록</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="fileUpload.do"
				enctype="multipart/form-data" method="post">
				<div>
					<table border="1">
						<tr>
							<td width="100" align="center">내용</td>
							<td width="400"><textarea rows="7" cols="80" id="subject"
									name="subject"></textarea></td>
						</tr>
						<tr>
							<td width="100" align="center">파일</td>
							<td width="400"><input type="file" id="fileName"
								name="fileName" size="60"></td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="파일전송">
				</div>
				<div>
					<h4>
						<a href="home.do">홈 가기</a>
					</h4>
				</div>
			</form>
		</div>
	</div>
</body>
</html>