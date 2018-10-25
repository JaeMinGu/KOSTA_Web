<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
String message = "jstl <연습>입니다....";
request.setAttribute("message", message); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

${message }<br>
<c:out value="최재민" /><br>
<c:out value="${message }" default="기본 메시지입니다....."/><br>

</body>
</html>






