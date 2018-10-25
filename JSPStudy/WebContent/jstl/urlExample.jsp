<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>url</title>
</head>
<body>

<%
String url = "https://www.naver.com"; 
%>

<a href="<%=url%>">이동</a>

<c:url var="url" value="https://www.naver.com">
	<c:param name="id" value="bangry"></c:param>
	<c:param name="name" value="재밍"></c:param>
</c:url>

<a href="${url }">이동</a>

</body>
</html>






