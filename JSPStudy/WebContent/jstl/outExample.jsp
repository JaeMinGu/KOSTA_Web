<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
String message = "jstl <����>�Դϴ�....";
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
<c:out value="�����" /><br>
<c:out value="${message }" default="�⺻ �޽����Դϴ�....."/><br>

</body>
</html>






