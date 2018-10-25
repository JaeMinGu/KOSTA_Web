<%@page import="kr.or.kosta.jsp.dao.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
	List<String> teams = new ArrayList<String>(); 
	teams.add("��ȭ �̱���"); 	
	teams.add("�λ� ������"); 	
	teams.add("SK Ÿ�̰���"); 	
	request.setAttribute("teams", teams); 
	

	List<User> users = new ArrayList<User>(); 
	users.add(new User("bangry1", "�����1", "1111", "1bangry@naver.com", "2002"));
	users.add(new User("bangry2", "�����2", "2222", "2bangry@naver.com", "2002"));
	users.add(new User("bangry3", "�����3", "3333", "3bangry@naver.com", "2002"));
	users.add(new User("bangry4", "�����4", "4444", "4bangry@naver.com", "2002"));
	request.setAttribute("users", users); 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

<c:forEach var="i" begin="1" end="10" step="1">
	${i } :	�Ϳ��� ����̵�<br>
</c:forEach>

<table border="1">
	<c:forEach var="i" begin="2" end="9">
		<tr>
			<c:forEach var="j" begin="1" end="9">
				<td> ${ i } * ${ j } = ${ (i * j) } </td>
			</c:forEach>
		</tr>	
	</c:forEach>
</table>

<select>
	<c:forEach items="${teams }" var="team">
		<option>${team }</option>
	</c:forEach>
</select>

<table border="1">
	<tr>
		<th>��ȣ</th>
		<th>���̵�</th>
		<th>�̸�</th>
		<th>��й�ȣ</th>
		<th>�̸���</th>
		<th>��������</th>
	</tr>
<c:choose>

	<c:when test="${not empty users }">
		<c:forEach items="${users }" var="user" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.passwd }</td>
				<td>${user.email }</td>
				<td>${user.regdate }</td>
			</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<tr>
			<td colspan="5">ȸ���� �������� �ʽ��ϴ�.</td>
		</tr>
	</c:otherwise>
</c:choose>
</table>

<%
	String ssn = "938403-9382029";
	request.setAttribute("ssn", ssn); 
%>

<c:forTokens items="${ssn }" delims="-" var="token">
	${token }
</c:forTokens>
</body>

</html>






