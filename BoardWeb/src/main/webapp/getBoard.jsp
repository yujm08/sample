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
<title>상세보기</title>
</head>
<body>
<center>
<h1>글 상세</h1>
<h3><a href = "logout.do">로그아웃</a></h3>

<form action = "updateBoard.do" method = "post">
<input name = "seq" type = "hidden" value = "<%= board.getSeq()%>">
<table border = "1" cellpading = "0" cellspacing = "0">
<tr>
	<td bgcolor = "orange">제목</td>
	<td align = "left"><input type = "text" name = "title" value = "<%= board.getTitle()%>"></td>
</tr>

<tr>
	<td bgcolor = "orange">작성자</td>
	<td align = "left"><%= board.getWriter()%></td>
</tr>

<tr>
	<td bgcolor = "orange">내용</td>
	<td align = "left"><textarea rows = "10" cols = "40" name = "content"><%= board.getContent()%></textarea></td>
</tr>

<tr>
	<td bgcolor = "orange">작성자</td>
	<td align = "left"><%= board.getRegDate()%></td>
</tr>

<tr>
	<td bgcolor = "orange">조회수</td>
	<td align = "left"><%= board.getCnt()%></td>
</tr>

<tr>
	<td colspan = "2" align = "center">
	<input type = "submit" value = "글 수정"></td>
</tr>

</table>
</form>
<br>

<a href = "insertBoard.jsp">글 등록</a>&nbsp&nbsp&nbsp;
<a href = "deleteBoard.do?seq=<%= board.getSeq()%>">글 삭제</a>&nbsp&nbsp&nbsp;
<a href = "getBoardList.do">글 목록</a>

</center>
</body>
</html>