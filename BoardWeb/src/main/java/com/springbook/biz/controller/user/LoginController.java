package com.springbook.biz.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

@Controller
public class LoginController {
	
	@RequestMapping("/login.do")
	public String login(UserVO vo, UserDAO userDAO) {
		
		System.out.println("�α��� ó��");
		
		UserVO user = userDAO.getUser(vo);
		
		if(user != null) {
			return "redirect:getBoardList.do";
		}else {
			return "redirect:login.jsp";
		}
	}
}
