package com.springbook.biz.board.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.controller.Controller;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

public class loginController implements Controller{

	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("�α��� ó��");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		if(user != null) {
			return "getBoardList.do";
		}else {
			return "login";
		}
		
	}
}
