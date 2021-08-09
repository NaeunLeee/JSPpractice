<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글 상세보기</title>
<script type="text/javascript">
	function getRecord(n) {
		frm.bId.value = n;
		frm.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1" rules="all">
				<tr>
					<th width="100" bgcolor="lightblue">글번호</th>
					<td width="70" align="center">${board.bId }</td>
					<th width="100" bgcolor="lightblue">작성자</th>
					<td width="150" align="center">${board.bWriter }</td>
					<th width="100" bgcolor="lightblue">작성일자</th>
					<td width="150" align="center">${board.bDate }</td>
					<th width="100" bgcolor="lightblue">조회수</th>
					<td width="70" align="center">${board.bHit }</td>
				</tr>
				<tr>
					<th width="100" bgcolor="lightblue">글제목</th>
					<td colspan="7">${board.bTitle }</td>
				</tr>
				<tr>
					<th width="100" bgcolor="lightblue">내용</th>
					<td colspan="7"><textarea rows="5" cols="110">${board.bContent }</textarea>
			</table>
		</div>
		<br>
		<div>
			<button type="button" onclick="location.href='boardList.do'">목록</button>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href ='updateForm.do?bId=${board.bId }'">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='deleteBoard.do'"
				onclick="location.href ='deleteBoard.do?bId=${board.bId }'">삭제</button>
		</div>
		<div>
			<form id="frm" name="frm" action="updateForm.do" method="post">
				<input type="hidden" id="bId" name="bId">
			</form>
		</div>

	</div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글 상세보기</title>
<script type="text/javascript">
	function getRecord(n) {
		frm.bId.value = n;
		frm.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1" rules="all">
				<tr>
					<th width="100" bgcolor="lightblue">글번호</th>
					<td width="70" align="center">${board.bId }</td>
					<th width="100" bgcolor="lightblue">작성자</th>
					<td width="150" align="center">${board.bWriter }</td>
					<th width="100" bgcolor="lightblue">작성일자</th>
					<td width="150" align="center">${board.bDate }</td>
					<th width="100" bgcolor="lightblue">조회수</th>
					<td width="70" align="center">${board.bHit }</td>
				</tr>
				<tr>
					<th width="100" bgcolor="lightblue">글제목</th>
					<td colspan="7">${board.bTitle }</td>
				</tr>
				<tr>
					<th width="100" bgcolor="lightblue">내용</th>
					<td colspan="7"><textarea rows="5" cols="110">${board.bContent }</textarea>
			</table>
		</div>
		<br>
		<div>
			<button type="button" onclick="location.href='boardList.do'">목록</button>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href ='updateForm.do?bId=${board.bId }'">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='deleteBoard.do'"
				onclick="location.href ='deleteBoard.do?bId=${board.bId }'">삭제</button>
		</div>
		<div>
			<form id="frm" name="frm" action="updateForm.do" method="post">
				<input type="hidden" id="bId" name="bId">
			</form>
		</div>

	</div>
</body>
>>>>>>> refs/remotes/origin/main
</html>