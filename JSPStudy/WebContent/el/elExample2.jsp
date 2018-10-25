<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 디폴트 객체 (11개)</title>
</head>
<body>

${pageScope }
---------------------------------------------------------<br>
${requestScope }
---------------------------------------------------------<br>
${sessionScope }
---------------------------------------------------------<br>
<%-- ${applicationScope } --%>
---------------------------------------------------------<br>
${param.name }, ${param['name'] }
---------------------------------------------------------<br>
${paramValues.hobby[0] }, ${paramValues.hobby[1] }
---------------------------------------------------------<br>
${header['user-agent'] }
---------------------------------------------------------<br>
${headerValues['xxx']}
---------------------------------------------------------<br>
쿠키 : ${cookie.loginId.name }, ${cookie.loginId.value }
---------------------------------------------------------<br>
${pageContext.request.method }
---------------------------------------------------------<br>


</body>
</html>