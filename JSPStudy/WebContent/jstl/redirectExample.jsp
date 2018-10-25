<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>redirect</title>
</head>
<body>

<%--<c:redirect url="https://www.daum.net"></c:redirect> --%>

<%--
<c:redirect url="https://www.daum.net">
	<c:param name="name" value="bangry"></c:param>
</c:redirect>
 --%>


<c:redirect url="/user/list.html" context="/jsp"></c:redirect>


</body>
</html>






