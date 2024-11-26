package com.springbook.biz.user;

import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {

	public static void main(String[] args) {
		
		GenericXmlApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		
		UserService userService = (UserService) container.getBean("userService");
		
		UserVO vo = new UserVO();
		/*
		vo.setId("1234");
		vo.setPassword("1234");
		vo.setName("123");
		vo.setRole("USER");
		
		userService.insertUser(vo);
		System.out.println("ȸ�� ������ �Ϸ�Ǿ����ϴ�");
		
		*/
		
		vo.setId("1234");
		vo.setPassword("1234");
		
		UserVO user = userService.getUser(vo);
	
		if(user != null) {
			System.out.println(user.getName() + " �� ȯ���մϴ�");
		}else {
			System.out.println("���� ȸ���� �ƴϽó׿�");
		}
		container.close();
		
		
	}
}
