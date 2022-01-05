<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	
	//파라미터값 가져오기
	String name = request.getParameter("name");
	String ph = request.getParameter("hp");
	String company = request.getParameter("company");
	String id = request.getParameter("id");
	
	//id = string -> int 
	int personId = Integer.parseInt(id);
	
	//파라미터 vo객체로 만들기
	PersonVo personVo = new PersonVo(name,ph,company,personId);
	phoneDao.personUpdate(personVo);
	
	//★리다이렉트
	//현재 위치에 같이있는 (list로 보낸다)
	//http://localhost:8088/phonebook1/list.jsp + 엔터
	response.sendRedirect("./list.jsp");

%>
