<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:set var="message" value="jstl <����>�Դϴ�.... " />

<jsp:useBean id="dog" class="kr.or.kosta.jsp.el.Dog" scope="page"></jsp:useBean>
<c:set target="${dog }" property="name" value="����"/>
<c:remove var="message"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

${message }<br>
<c:out value="�����" /><br>
<c:out value="${message }" default="�⺻ �޽����Դϴ�....."/><br>
������ �̸� : ${dog.name }
</body>
</html>






