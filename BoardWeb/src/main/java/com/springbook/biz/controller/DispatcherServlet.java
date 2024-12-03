package com.springbook.biz.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HandlerMapping handlerMapping;   
	ViewResolver viewResolver;

	public void init() throws ServletException{
		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();
		viewResolver.setPrefix("./");
		viewResolver.setSuffix(".jsp");
		System.out.println("init 메소드 실행");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet메소드 실행");
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(path);

		Controller ctrl = handlerMapping.getController(path);
		
		String viewName = ctrl.handleRequest(request, response);
		
		String view = null;
		
		if(!viewName.contains(".do")) {
			view = viewResolver.getPath(viewName);
		}else {
			view = viewName;
		}
		
		response.sendRedirect(view);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

	}

}
