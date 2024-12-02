package com.springbook.biz.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

@Controller
public class DeleteBoardController {

	@RequestMapping("/deleteBoard.do")
	public String deleteBoard (BoardVO vo, BoardDAO boardDAO) {
		
		System.out.println("글 삭제 처리");
		
		System.out.println("삭제할 글 번호: " + vo.getSeq() + 1);
		
		boardDAO.deleteBoard(vo);
		return "redirect:getBoardList.do";
	}
}
