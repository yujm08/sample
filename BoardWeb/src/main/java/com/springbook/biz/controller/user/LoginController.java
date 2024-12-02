package com.springbook.biz.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

public class LoginController implements Controller{
	
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse respone) {
		
		System.out.println("�α��� ó��");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		ModelAndView mav = new ModelAndView();
		
		if(user != null) {
			mav.setViewName("getBoardList.do");
		}else {
			mav.setViewName("login.jsp");
		}
		
		return mav;
	}
}
