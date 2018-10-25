<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:set var="score" value="98" scope="request"/>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>


<c:if test="${score >= 50}">
	Ελ°ϊ..........
</c:if>

<c:if test="${empty param }">
	<c:set var="page" value="1"></c:set>
</c:if>

${page }


</body>
</html>






