<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상세보기</title>
</head>
<body>
<center>
<h1>글 상세</h1>
<h3><a href = "logout.do">로그아웃</a></h3>

<form action = "updateBoard.do" method = "post">
<input name = "seq" type = "hidden" value = "${board.seq}">
<table border = "1" cellpading = "0" cellspacing = "0">
<tr>
	<td bgcolor = "orange">제목</td>
	<td align = "left"><input type = "text" name = "title" value = "${board.title}"></td>
</tr>

<tr>
	<td bgcolor = "orange">작성자</td>
	<td align = "left">${board.writer}</td>
</tr>

<tr>
	<td bgcolor = "orange">내용</td>
	<td align = "left"><textarea rows = "10" cols = "40" name = "content">${board.content}</textarea></td>
</tr>

<tr>
	<td bgcolor = "orange">작성자</td>
	<td align = "left">${board.regDate}</td>
</tr>

<tr>
	<td bgcolor = "orange">조회수</td>
	<td align = "left">${board.cnt}</td>
</tr>

<tr>
	<td colspan = "2" align = "center">
	<input type = "submit" value = "글 수정"></td>
</tr>

</table>
</form>
<br>

<a href = "insertBoard.jsp">글 등록</a>&nbsp&nbsp&nbsp;
<a href = "deleteBoard.do?seq=${board.seq}">글 삭제</a>&nbsp&nbsp&nbsp;
<a href = "getBoardList.do">글 목록</a>

</center>
</body>
</html>