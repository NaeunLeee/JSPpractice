<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 폼</title>
</head>
<body>
	<div align="center">
		<form id="frm" name="frm" action="updateBoard.do" method="post">
			<div>
				<h1>게시글 수정</h1>
			</div>
			<div>
				<table border="1" rules="all">
					<tr>
						<th width="100" bgcolor="lightblue">작성자</th>
						<td width="150">${board.bWriter }</td>
						<th width="100" bgcolor="lightblue">작성일자</th>
						<td width="150">${board.bDate }</td>
					</tr>
					<tr>
						<th width="100" bgcolor="lightblue">글제목</th>
						<td colspan="3"><input type="text" id="bTitle" name="bTitle"
							size="60" required="required"></td>
					</tr>
					<tr>
						<th width="100" bgcolor="lightblue">내용</th>
						<td colspan="3"><textarea rows="7" cols="65" id="bContent"
								name="bContent" required="required"
								placeholder="수정할 내용을 입력해주세요."></textarea>
				</table>
			</div>
			<div>
				<input type="hidden" id="bId" name="bId" value="${board.bId }">
				<!-- <input type="hidden" id="bTitle" name="bTitle" value="${board.bTitle }"> -->
				<!-- <input type="hidden" id="bContent" name="bContent" value="${board.bContent }"> -->
			</div>
			<br>
			<div>
			<!-- <button type="button"
					onclick="document.getElementById(frm).submit()">수정</button> -->
				<button type="submit">수정</button>
				&nbsp;&nbsp;
				<button type="reset">취소</button>
				&nbsp;&nbsp;
				<button type="button" onclick="location.href='boardList.do'">돌아가기</button>
			</div>
		</form>
	</div>
</body>
</html>