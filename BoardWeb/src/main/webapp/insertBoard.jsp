<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 생성</title>
</head>
<body>
<center>
<h1>글 생성</h1>
<hr>

<form action="insertBoard.do" method="post">
<table border="1" cellpading="0" cellspace="0">

<tr>
	<td bgcolor="orange">제목</td>
	<td><input type="text" name="title"></td>
</tr>

<tr>
	<td bgcolor="orange">작성자</td>
	<td><input type="text" name="writer"></td>
</tr>

<tr>
	<td bgcolor="orange">내용</td>
	<td><textarea rows="10" cols="40" name="content"></textarea></td>
</tr>

<tr>
	<td colspan="2" align="center">
	<input type="submit" value="글 생성"></td>
</tr>

</table>
</form>

</center>
</body>
</html>