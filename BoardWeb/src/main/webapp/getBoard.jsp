<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	BoardVO board = (BoardVO) session.getAttribute("board"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상세보기</title>
</head>
<body>
<center>
<h1>상세보기</h1>
<hr>

<form action="updateBoard.do" method="post">
<table border="1">
<tr>
	<td bgcolor="orange">제목</td>
	<td><input type="text" name="title" value="<%=board.getTitle() %>>"></td>
</tr>

<tr>
	<td bgcolor="orange">작성자</td>
	<td><input type="text" name="writer" value="<%=board.getWriter() %>"></td>
</tr>

<tr>
	<td bgcolor="orange">작성일</td>
	<td><%=board.getRegDate() %></td>>
</tr>

<tr>
	<td bgcolor="orange">내용</td>
	<td><textarea rows="10" cols="40" name="content" value="<%=board.getContent()%>"></textarea></td>
</tr>

<tr>
	<td bgcolor="orange">조회수</td>
	<td><%=board.getSeq() %></td>>
</tr>

<tr>
	<td colspan="2" align="center">
	<td><input type="submit" value="글 수정"></td></td>
</tr>

</table>
</form>
<br>

<a href="insertBoard.jsp">새글 등록</a>&nbsp&nbsp&nbsp;
<a href="deleteBoard.do?seq=<%=board.getSeq() %>">글 삭제</a>&nbsp&nbsp&nbsp;
<a href="getBoardList.do">글 목록</a>&nbsp&nbsp&nbsp;

</center>
</body>
</html>