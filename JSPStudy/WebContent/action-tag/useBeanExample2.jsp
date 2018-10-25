<%@page import="kr.or.kosta.jsp.Account"%>
<%@ page contentType="text/html; charset=utf-8" %>

<%
// Account account = new Account("1111-2222", "김나나", 1111, 10000);
Class.forName("kr.or.kosta.jsp.Account").newInstance();
%>

<jsp:useBean id="account" class="kr.or.kosta.jsp.Account" scope="request"/>

<jsp:setProperty name="account" property="accountNum" value="5555-8888"/>
<jsp:setProperty name="account" property="accountOwner" value="홍길동"/>
<jsp:setProperty name="account" property="passwd" value="7458"/>
<jsp:setProperty name="account" property="restMoney" value="50000"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
계좌번호: <%=account.getAccountNum()%><br>
예금주명: <%=account.getAccountOwner()%><br>
잔   액 : <%=account.getRestMoney()%><br>
비밀번호 : <%=account.getPasswd()%><br>

계좌번호: <jsp:getProperty property="accountNum" name="account"/><br>
예금주명: <jsp:getProperty property="accountOwner" name="account"/><br>
잔   액 : <jsp:getProperty property="restMoney" name="account"/><br>
비밀번호: <jsp:getProperty property="passwd" name="account"/><br>
</body>
</html>