<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "java.util.List" %>

<%-- 파라미터를 받아서 자바변수에 넣어야 된다 --%>
<%-- 값을 넣을때는 요청한 파라미터 이름과 동일하게 --%>
<%
	
	
	//phoneDao를 메모리에 올린다. 
	PhoneDao phoneDao = new PhoneDao();

	//--저장 관련---------------------------------	
	//파라미터값 가져오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	/*테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//전송된 값(파라미터)을 vo객체로 만든다
	PersonVo personVo = new PersonVo(name,hp,company);

	//저장한다.
	phoneDao.personInsert(personVo);
	
	//리스트 가져오기----------------------
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//html표현 
	//list.jsp html 그대로 사용할 경우, insert에서 list작동 만약 디자인이 변경되면 동일한 form의 리스트라도
	//다 찾아서 수정해줘야한다. 따라서 html 제거 후 리다이렉트
	
	//★리다이렉트
	//현재 위치에 같이있는 (list로 보낸다)
	//http://localhost:8088/phonebook1/list.jsp + 엔터
	response.sendRedirect("./list.jsp");
	
	//리다이렉트 시킬경우 html 없어도됨. 전부 java코드 
	
%>