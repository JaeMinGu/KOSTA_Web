<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>�޽��� : ${requestScope.message }</h2>

<h2>����</h2>
<ul>
	<c:forEach var="team" items="${list }" >
		<li>${team }</li>
	</c:forEach>
</ul>
</body>
</html>