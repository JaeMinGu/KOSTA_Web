<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- <%@ page isELIgnored="true" %>  --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL ����Ʈ ��ü (11��)</title>
</head>
<body>

<%
// �׽�Ʈ�� ���� Scope��ü�� ������ ����
String today = String.format("%1$tF %1$tT", Calendar.getInstance());
request.setAttribute("today", today);
session.setAttribute("id", "bangry");

String[] names = {"�����", "�ڱ���", "�ֱ���"};
%>

<%=request.getAttribute("today") %>
${requestScope.today}<br>
${today}<br>

<%=pageContext.findAttribute("id") %>
${id}<br>

${names[0]}, ${names[1]}, ${names[2]}<br>

<jsp:useBean id="dog" class="kr.or.kosta.jsp.el.Dog" scope="page"/>
<jsp:setProperty property="name" name="dog" value="����"/>

<jsp:useBean id="student" class="kr.or.kosta.jsp.el.Student" scope="page"/>
<jsp:setProperty property="name" name="student" value="���"/>
<jsp:setProperty property="dog" name="student" value="${pageScope.dog }"/>


<%--
<jsp:getProperty property="id" name="student"/>
<jsp:getProperty property="name" name="student"/>
<jsp:getProperty property="dog" name="student"/>
--%>


${student.name}, ${student.dog.name}<br> <!-- el�� ����ϸ� studnet ��ü�� dog ��ü�� name���� ���� ������ --> 
${student.setName("����") }
${student.getName() }
${student.name }







</body>
</html>