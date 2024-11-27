<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
<center>

<h1>회원가입</h1>
<hr>

<form action = "insertUser.do" method = "post">
<table border = "1" cellpading = "1" cellspacing = "0">

<tr>
	<td bgcolor = "orange">아이디</td>
	<td><input type = "text" name = "id"></td>
</tr>

<tr>
	<td bgcolor = "orange">비밀번호</td>
	<td><input type = "password" name = "password1"></td>
</tr>

<tr>
	<td bgcolor = "orange">비밀번호 확인</td>
	<td><input type = "password" name = "password2"></td>
</tr>

<tr>
	<td bgcolor = "orange">이름</td>
	<td><input type = "text" name = "name"></td>
</tr>

<tr>
	<td colspan = "2" align = "center">
	<input type = "submit" value = "회원가입"></td>
</tr>

</table>
</form>
<br>
<h3>이미 회원이신가요? <a href = "login.jsp">로그인</a></h3>

</center>
</body>
</html>