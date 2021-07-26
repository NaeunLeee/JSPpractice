<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>

<script type="text/javascript">
	function getRecord(n) {
		frm.bId.value = n;
		frm.submit();
	}
</script>

</head>
<body>
	<div align="center">
		<div><h1>공지사항 목록</h1></div>
		<div>
			<table border="1" rules="all">
				<tr>
					<th width="100" bgcolor="lightblue">번호</th>
					<th width="300" bgcolor="lightblue">글 제목</th>
					<th width="150" bgcolor="lightblue">작성자</th>
					<th width="150" bgcolor="lightblue">작성일자</th>
					<th width="70" bgcolor="lightblue">조회수</th>
				</tr>
				<c:forEach var="board" items="${boards }">
					<tr align="center" onmouseover="this.style.background='yellow'" onmouseout="this.style.background='white'"
						onclick="getRecord(${board.bId })">
						<td>${board.bId }</td>
						<td align="left">${board.bTitle }</td>
						<td>${board.bWriter }</td>
						<td>${board.bDate }</td>
						<td>${board.bHit}</td>
					</tr>
				</c:forEach>
			</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='home.do'">홈 가기</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='insertForm.do'">새 글 작성</button>&nbsp;&nbsp;&nbsp;
		</div>
		<div>
			<form id="frm" name="frm" action="boardSelect.do" method="post">
				<input type="hidden" id="bId" name="bId">
			</form>
		</div>
	</div>
</body>
</html>