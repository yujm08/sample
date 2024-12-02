package com.springbook.biz.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

public class GetBoardController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("�� ���� ó��");
		
		String seq = request.getParameter("seq");
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		
		BoardDAO boardDAO = new BoardDAO();
		BoardVO Board = boardDAO.getBoard(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("Board", Board);
		mav.setViewName("getBoard.jsp");
		return mav;
	}

}
