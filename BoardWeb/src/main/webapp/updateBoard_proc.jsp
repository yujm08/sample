<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.springbook.biz.board.impl.BoardDAO" %>    
<%@page import="com.springbook.biz.board.BoardVO" %>   
<% 
request.setCharacterEncoding("EUC-KR");
String title =   request.getParameter("title");
String content = request.getParameter("content");
String seq = request.getParameter("seq");

BoardVO vo = new BoardVO();
vo.setTitle(title);
vo.setContent(content);
vo.setSeq(Integer.parseInt(seq));

BoardDAO boardDAO = new BoardDAO();
boardDAO.updateBoard(vo);

response.sendRedirect("getBoardList.jsp");

%>