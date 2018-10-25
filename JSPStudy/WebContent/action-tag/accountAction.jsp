<%@ page contentType="text/html; charset=utf-8" %>

<%request.setCharacterEncoding("utf-8"); %> <%-- 한글 깨지지 않게 --%>
<jsp:useBean id="account" class="kr.or.kosta.jsp.Account" scope="request" />
<jsp:setProperty property="*" name="account"/>
<jsp:setProperty property="passwd" param="password" name="account"/>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>


계좌번호: <jsp:getProperty property="accountNum" name="account"/><br>
예금주명: <jsp:getProperty property="accountOwner" name="account"/><br>
잔   액 : <jsp:getProperty property="restMoney" name="account"/><br>
비밀번호: <jsp:getProperty property="passwd" name="account"/><br>


</body>
</html>