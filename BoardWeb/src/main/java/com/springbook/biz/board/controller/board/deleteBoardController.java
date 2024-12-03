package com.springbook.biz.board.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.biz.controller.Controller;

public class deleteBoardController implements Controller{
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("�� ���� ó��");
		String seq = request.getParameter("seq");
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(vo);
		
		return "getBoardList.do";
	}
}
