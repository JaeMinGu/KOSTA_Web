<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- <%@ page isELIgnored="true" %>  --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 디폴트 객체 (11개)</title>
</head>
<body>

<%
// 테스트를 위한 Scope객체에 데이터 저장
String today = String.format("%1$tF %1$tT", Calendar.getInstance());
request.setAttribute("today", today);
session.setAttribute("id", "bangry");

String[] names = {"김기정", "박기정", "최기정"};
%>

<%=request.getAttribute("today") %>
${requestScope.today}<br>
${today}<br>

<%=pageContext.findAttribute("id") %>
${id}<br>

${names[0]}, ${names[1]}, ${names[2]}<br>

<jsp:useBean id="dog" class="kr.or.kosta.jsp.el.Dog" scope="page"/>
<jsp:setProperty property="name" name="dog" value="달이"/>

<jsp:useBean id="student" class="kr.or.kosta.jsp.el.Student" scope="page"/>
<jsp:setProperty property="name" name="student" value="재민"/>
<jsp:setProperty property="dog" name="student" value="${pageScope.dog }"/>


<%--
<jsp:getProperty property="id" name="student"/>
<jsp:getProperty property="name" name="student"/>
<jsp:getProperty property="dog" name="student"/>
--%>


${student.name}, ${student.dog.name}<br> <!-- el을 사용하면 studnet 객체의 dog 객체의 name까지 접근 가능함 --> 
${student.setName("성재") }
${student.getName() }
${student.name }







</body>
</html>