<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.PhoneDao" %>
<%
	String paraId = request.getParameter("id");
	int personId = Integer.parseInt(paraId);
	
	PhoneDao phoneDao = new PhoneDao();
%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>updateForm</title>
</head>

<body>

	<h1>[phonebook1]</h1>
	<h2>전화번호 수정화면</h2>
	
	<p>수정 화면 입니다. 아래 항목을 수정하고 "수정" 버튼을 클릭하세요</p>
	
	<form action="./update.jsp" method="get">
		이름(name): <input type = "text" name = "name" value = "<%= phoneDao.getPerson(personId).getName() %>"> <br>
		핸드폰(hp): <input type = "text" name = "hp" value = "<%= phoneDao.getPerson(personId).getHp() %>"> <br>
		회사(company): <input type = "text" name = "company" value = "<%= phoneDao.getPerson(personId).getCompany() %>"> <br>
		코드(id): <input type = "text" name = "id" value = "<%= phoneDao.getPerson(personId).getPersonId() %>"> <br>
		<button type="submit">수정</button>
	</form>
	
</body>

</html>