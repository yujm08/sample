package com.springbook.biz.controller;

import java.util.HashMap;
import java.util.Map;

import com.springbook.biz.board.controller.board.deleteBoardController;
import com.springbook.biz.board.controller.board.getBoardController;
import com.springbook.biz.board.controller.board.getBoardListController;
import com.springbook.biz.board.controller.board.insertBoardController;
import com.springbook.biz.board.controller.board.updateBoardController;
import com.springbook.biz.board.controller.user.loginController;
import com.springbook.biz.board.controller.user.logoutController;

public class HandlerMapping {

	private Map<String, Controller> mapping;
	
	public HandlerMapping() {
		mapping = new HashMap<String, Controller>();
		mapping.put("/login.do", new loginController());
		mapping.put("/getBoardList.do", new getBoardListController());
		mapping.put("/getBoard.do", new getBoardController());
		mapping.put("/insertBoard.do", new insertBoardController());
		mapping.put("updateBoard.do", new updateBoardController());
		mapping.put("/deleteBoard.do", new deleteBoardController());
		mapping.put("/logout.do", new logoutController());
	}
	
	public Controller getController(String path) {
		return mapping.get(path);
	}
}
