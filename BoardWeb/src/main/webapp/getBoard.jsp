<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BoardVO board = (BoardVO) session.getAttribute("board");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�󼼺���</title>
</head>
<body>
<center>
<h1>�� ��</h1>
<h3><a href = "logout.do">�α׾ƿ�</a></h3>

<form action = "updateBoard.do" method = "post">
<input name = "seq" type = "hidden" value = "<%= board.getSeq()%>">
<table border = "1" cellpading = "0" cellspacing = "0">
<tr>
	<td bgcolor = "orange">����</td>
	<td align = "left"><input type = "text" name = "title" value = "<%= board.getTitle()%>"></td>
</tr>

<tr>
	<td bgcolor = "orange">�ۼ���</td>
	<td align = "left"><%= board.getWriter()%></td>
</tr>

<tr>
	<td bgcolor = "orange">����</td>
	<td align = "left"><textarea rows = "10" cols = "40" name = "content"><%= board.getContent()%></textarea></td>
</tr>

<tr>
	<td bgcolor = "orange">�ۼ���</td>
	<td align = "left"><%= board.getRegDate()%></td>
</tr>

<tr>
	<td bgcolor = "orange">��ȸ��</td>
	<td align = "left"><%= board.getCnt()%></td>
</tr>

<tr>
	<td colspan = "2" align = "center">
	<input type = "submit" value = "�� ����"></td>
</tr>

</table>
</form>
<br>

<a href = "insertBoard.jsp">�� ���</a>&nbsp&nbsp&nbsp;
<a href = "deleteBoard.do?seq=<%= board.getSeq()%>">�� ����</a>&nbsp&nbsp&nbsp;
<a href = "getBoardList.do">�� ���</a>

</center>
</body>
</html>