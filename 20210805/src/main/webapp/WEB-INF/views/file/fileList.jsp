<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 리스트</title>
<script type="text/javascript">
	function fileDown(orgFile, downFile) {
		frm.orgFile.value = orgFile;
		frm.downFile.value = downFile;
		frm.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<h3>파일 리스트</h3>
		</div>
		<div>
			<table border="1" rules="all" cellpadding="10">
				<tr bgcolor="lightblue">
					<th>번호</th>
					<th>내용</th>
					<th>원본파일이름</th>
					<th>다운파일이름</th>
				</tr>
				<c:forEach var="file" items="${files}">
					<tr onMouseOver="this.style.backgroundColor='#FFF4E9';"
						onMouseOut="this.style.backgroundColor='white'"
						style="cursor: pointer;"
						onclick="fileDown('${file.fileName}', '${file.downFile}')">
						<td align="center">${file.num}</td>
						<td>${file.subject}</td>
						<td>${file.fileName}</td>
						<td>${file.downFile}</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<h4>
					<a href="home.do">홈 가기</a>
				</h4>
			</div>
			<div>
				<form id="frm" name="frm" action="fileDownLoad.do" method="post">
					<input type="hidden" id="orgFile" name="orgFile"> <input
						type="hidden" id="downFile" name="downFile">
				</form>
			</div>
		</div>
	</div>
</body>
</html>