<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ��� ����</title>
</head>
<body>
<center>
<h1>�� ��� ����</h1>
<hr>
<h3>ȯ���մϴ�&nbsp<a href = "logout.do">�α׾ƿ�</a></h3>

<table border = "1" cellpading = "0" cellspacing = "0" width = "700">

<tr>
	<th bgcolor = "orange" width = "100">��ȣ</th>
	<th bgcolor = "orange" width = "200">����</th>
	<th bgcolor = "orange" width = "150">�ۼ���</th>
	<th bgcolor = "orange" width = "150">�����</th>
	<th bgcolor = "orange" width = "100">��ȸ��</th>
</tr>

	<c:forEach items="${boardList}" var="board">
	<tr>
		<td>${board.seq}</td>
		<td align = "left"><a href = "getBoard.do?seq=${board.seq}">${board.title}</a></td>
		<td>${board.writer}</td>
		<td>${board.regDate}</td>
		<td>${board.cnt}</td>
	</tr>
	</c:forEach>
	
</table>
<br>
<a href = "insertBoard.jsp">���� ���</a>

</center>
</body>
</html>