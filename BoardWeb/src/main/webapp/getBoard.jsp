<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<%@page import="com.springbook.biz.board.impl.BoardDAO" %>    
<%@page import="com.springbook.biz.board.BoardVO" %>    
<%
BoardVO board = (BoardVO) session.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ��</title>
</head>
<body>

<center>
<h1>�� ��</h1>
<a href=logout_proc.jsp">�α׾ƿ�</a>
<hr>

<form action="updateBoard.do" method="post">
<input name = "seq" type = "hidden" value = "<%= board.getSeq() %>>">
<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td bgcolor="orange" width="70">����</td>
	<td align="left"><input name="title" type="text" value="<%= board.getTitle() %>"/></td> 
	</tr>
	<tr>
	<td bgcolor="orange">�ۼ���</td>
	<td align="left"><%= board.getWriter() %></td>
    </tr>
    
    <tr>
    <td bgcolor="orange">����</td>
    <td align="left"><textarea rows="10" cols="40" name="content"><%= board.getContent() %></textarea>
	</td>
	
	<tr>
	<td bgcolor="orange">�����</td>
	<td align="left"><%=board.getRegDate() %></td>
	</tr>
	
	<tr>
	<td bgcolor="orange">��ȸ��</td>
	<td align="left"><%=board.getCnt() %></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="�� ����"></td>
	</tr>
</table>
</form>

<a href="insertBoard.jsp">�� ���</a>&nbsp&nbsp&nbsp;
<a href="deleteBoard.do?seq=<%=board.getSeq()%>">�� ����</a>&nbsp&nbsp&nbsp;
<a href="getBoardList.jsp">�� ���</a>

</center>
</body>
</html>