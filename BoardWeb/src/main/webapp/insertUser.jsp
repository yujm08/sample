<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
<center>

<h1>ȸ������</h1>
<hr>

<form action = "insertUser.do" method = "post">
<table border = "1" cellpading = "1" cellspacing = "0">

<tr>
	<td bgcolor = "orange">���̵�</td>
	<td><input type = "text" name = "id"></td>
</tr>

<tr>
	<td bgcolor = "orange">��й�ȣ</td>
	<td><input type = "password" name = "password1"></td>
</tr>

<tr>
	<td bgcolor = "orange">��й�ȣ Ȯ��</td>
	<td><input type = "password" name = "password2"></td>
</tr>

<tr>
	<td bgcolor = "orange">�̸�</td>
	<td><input type = "text" name = "name"></td>
</tr>

<tr>
	<td colspan = "2" align = "center">
	<input type = "submit" value = "ȸ������"></td>
</tr>

</table>
</form>
<br>
<h3>�̹� ȸ���̽Ű���? <a href = "login.jsp">�α���</a></h3>

</center>
</body>
</html>