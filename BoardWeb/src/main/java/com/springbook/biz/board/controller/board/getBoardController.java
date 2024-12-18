package com.springbook.biz.board.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.biz.controller.Controller;

public class getBoardController implements Controller{

	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("상세보기 처리");
		String seq = request.getParameter("seq");
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		
		BoardDAO boardDAO = new BoardDAO();
		BoardVO board = boardDAO.getBoard(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("board", board);
		return "getBoard";
	}
}
