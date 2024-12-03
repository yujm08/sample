<%@page import="com.springbook.biz.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	List<BoardVO> boardList = (List) session.getAttribute("boardList");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 목록</title>
</head>
<body>
<center>
<h1>글 목록</h1>
<h3>환영합니다 <a href="logout.do">로그아웃</a></h3>
<br>

<table border="1" width="700">
<tr>
	<th bgcolor="orange" width="100">번호</th>
	<th bgcolor="orange" width="200">제목</th>
	<th bgcolor="orange" width="150">작성자</th>
	<th bgcolor="orange" width="150">작성일</th>
	<th bgcolor="orange" width="100">조회수</th>
</tr>

	<%for(BoardVO board : boardList){ %>
<tr>
	<td> <%=board.getSeq() %></td>
	<td><a href="getBoard.do?seq=<%=board.getSeq() %>"><%=board.getTitle() %></a></td>
	<td><%=board.getWriter() %></td>
	<td><%=board.getRegDate() %></td>
	<td><%=board.getCnt() %></td>
</tr>

<%} %>

</table>


</center>
</body>
</html>