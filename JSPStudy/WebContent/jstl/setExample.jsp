<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:set var="message" value="jstl <연습>입니다.... " />

<jsp:useBean id="dog" class="kr.or.kosta.jsp.el.Dog" scope="page"></jsp:useBean>
<c:set target="${dog }" property="name" value="코코"/>
<c:remove var="message"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

${message }<br>
<c:out value="최재민" /><br>
<c:out value="${message }" default="기본 메시지입니다....."/><br>
강아지 이름 : ${dog.name }
</body>
</html>






