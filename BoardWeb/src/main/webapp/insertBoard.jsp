<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���</title>
</head>
<body>
<center>
<h1>�� ���</h1>
<a href="logout_proc.do">�α׾ƿ�</a>
<hr>

<form action="insertBoard.do" method="post">
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="orange" width="70">����</td>
		<td align="left"><input type="text" name="title"></td>
	</tr>

	<tr>
		<td bgcolor="orange">�ۼ���</td>
		<td align="left"><input type="text" name="writer"></td>
	</tr>
	
	<tr>
		<td bgcolor="orange">����</td>
		<td align="left"><textarea rows="10" cols="40" name="content"></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="���� ���"></td>
	</tr>
</table>
</form>
<br>
<a href="getBoardList.do">�� ��ϰ���</a>
</center>
</body>
</html>