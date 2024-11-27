package com.springbook.biz.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(path);
		
		if(path.equals("/login.do")) {
			System.out.println("�α��� ó��");
			
			String id = request.getParameter("id");
			String password = request.getParameter("password");

			UserVO vo = new UserVO();
			vo.setId(id);
			vo.setPassword(password);

			UserDAO userDAO = new UserDAO();
			UserVO user = userDAO.getUser(vo);

			if(user != null) {
				response.sendRedirect("getBoardList.do");
			}else {
				response.sendRedirect("login.jsp");
			}
			
		}else if(path.equals("/logout.do")) {
			System.out.println("�α׾ƿ� ó��");
			
			HttpSession session = request.getSession();
			session.invalidate();
			
			response.sendRedirect("login.jsp");
			
			
		}else if(path.equals("/getBoardList.do")) {
			System.out.println("��� ���� ó��");

			BoardVO vo = new BoardVO();
			BoardDAO boardDAO = new BoardDAO();
			List<BoardVO> boardList = boardDAO.getBoardList(vo);
			
			HttpSession session = request.getSession();
			session.setAttribute("boardList", boardList);
			response.sendRedirect("getBoardList.jsp");
			
		}else if(path.equals("/getBoard.do")) {
			System.out.println("�� ���� ó��");
			
			String seq = request.getParameter("seq");

			BoardVO vo = new BoardVO();
			vo.setSeq(Integer.parseInt(seq));
			
			BoardDAO boardDAO = new BoardDAO();
			BoardVO board = boardDAO.getBoard(vo);
			
			HttpSession session = request.getSession();
			session.setAttribute("board", board);
			response.sendRedirect("getBoard.jsp");
			
		}else if(path.equals("/updateBoard.do")) {
			System.out.println("�� ���� ó��");
			
			request.setCharacterEncoding("EUC-KR");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String seq = request.getParameter("seq");
			
			BoardVO vo = new BoardVO();
			vo.setTitle(title);
			vo.setContent(content);
			vo.setSeq(Integer.parseInt(seq));
			
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.updateBoard(vo);
			
			response.sendRedirect("getBoardList.do");
			
		}else if(path.equals("/deleteBoard.do")) {
			System.out.println("�� ���� ó��");
			
			String seq = request.getParameter("seq");
			
			BoardVO vo = new BoardVO();
			vo.setSeq(Integer.parseInt(seq));
			
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.deleteBoard(vo);
			
			response.sendRedirect("getBoardList.do");
			
		}else if(path.equals("/insertBoard.do")) {
			System.out.println("�� ��� ó��");
			
			request.setCharacterEncoding("EUC-KR");
			String title = request.getParameter("title");
			String writer = request.getParameter("writer");
			String content = request.getParameter("content");
			
			BoardVO vo = new BoardVO();
			vo.setTitle(title);
			vo.setWriter(writer);
			vo.setContent(content);
			
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.insertBoard(vo);
			
			response.sendRedirect("getBoardList.do");
		}else if(path.equals("/insertUser.do")) {
			System.out.println("ȸ������ ó��");
			
			request.setCharacterEncoding("EUC-KR");
			String id = request.getParameter("id");
			String password1 = request.getParameter("password1");
			String password2 = request.getParameter("password2");
			String name = request.getParameter("name");
			
			if(!password1.equals(password2)) {
				System.out.println("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
				response.sendRedirect("insertUser.jsp");
			}else {
			
			UserVO vo = new UserVO();
			vo.setId(id);
			vo.setName(name);
			vo.setPassword(password1);
			vo.setRole("User");
			
			UserDAO userDAO = new UserDAO();
			userDAO.insertUser(vo);
			
			response.sendRedirect("login.jsp");
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
