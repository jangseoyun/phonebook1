<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "java.util.List" %>

<%
	//Dao 생성
	PhoneDao phoneDao = new PhoneDao();
	
	//파라미터 값 불러오기
	String paraId = request.getParameter("id");
	
	//Vo생성 ->전송된 값을 vo 객체로 만든다 (vo 생성자)
	int personId = Integer.parseInt(paraId);
	PersonVo personVo = new PersonVo(personId);
	
	//삭제한다
	phoneDao.personDelete(personId);
	
	//리다이렉트 -> 삭제 후 삭제된 리스트 보여주기
	response.sendRedirect("./list.jsp");
%>
