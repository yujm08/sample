<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	BoardVO board = (BoardVO) session.getAttribute("board"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�󼼺���</title>
</head>
<body>
<center>
<h1>�󼼺���</h1>
<hr>

<form action="updateBoard.do" method="post">
<table border="1">
<tr>
	<td bgcolor="orange">����</td>
	<td><input type="text" name="title" value="<%=board.getTitle() %>>"></td>
</tr>

<tr>
	<td bgcolor="orange">�ۼ���</td>
	<td><input type="text" name="writer" value="<%=board.getWriter() %>"></td>
</tr>

<tr>
	<td bgcolor="orange">�ۼ���</td>
	<td><%=board.getRegDate() %></td>>
</tr>

<tr>
	<td bgcolor="orange">����</td>
	<td><textarea rows="10" cols="40" name="content" value="<%=board.getContent()%>"></textarea></td>
</tr>

<tr>
	<td bgcolor="orange">��ȸ��</td>
	<td><%=board.getSeq() %></td>>
</tr>

<tr>
	<td colspan="2" align="center">
	<td><input type="submit" value="�� ����"></td></td>
</tr>

</table>
</form>
<br>

<a href="insertBoard.jsp">���� ���</a>&nbsp&nbsp&nbsp;
<a href="deleteBoard.do?seq=<%=board.getSeq() %>">�� ����</a>&nbsp&nbsp&nbsp;
<a href="getBoardList.do">�� ���</a>&nbsp&nbsp&nbsp;

</center>
</body>
</html>