<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- import -> page import="" --%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>


<%
	//dao올리기
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>phonebook1</title>
</head>

<body>
	<h1>[phonebook1]</h1>

	<h2>*전화번호 리스트</h2>

	<p>입력한 정보 내역입니다.</p>
	
	<%-- 데이터만큼 반복하기 (프로그램)--%>
	<%
	for(int i = 0; i<personList.size(); i++){
	%>
		<%-- 값을 표현하는 경우 <%= %> --%>
		<table border = "1">
			<tr>
				<td>이름(name)</td>
				<td><%= personList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%= personList.get(i).getCompany() %></td>
			</tr>
			<tr>
				<td>수정</td>
				<td><a href = "./delete.jsp?id=<%= personList.get(i).getPersonId() %>">[삭제]</a></td>
			</tr>
		</table>
		<br>
	
	<% 
	} 
	%>
	<%-- 데이터만큼 반복하기 (프로그램)--%>
	
	<a href="./writeForm.jsp">전화번호 등록</a>
	
</body>

</html>