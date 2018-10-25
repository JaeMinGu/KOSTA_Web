<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>jsp가 제공하는 4개의 scope(context) 객체들...</h2>
<%-- 1. pageContext --%>
<%-- 2. request --%>
<%-- 3. session --%>
<%-- 4. application --%>


<%
pageContext.setAttribute("message", "pageContext scope 객체입니다...");

request.setAttribute("message", "request scope 객체입니다...");
//application.getRequestDispatcher("/scopeObject2.jsp").forward(request, response);

//session.setAttribute("message", "session scope 객체입니다....");
application.setAttribute("message", "application scope 객체입니다....");
%>

현재 페이지 정보 : <%=pageContext.getAttribute("message") %>

<%--가장 막강한 검색 기능 제공하는 메소드: pageContext의 findAttribute
pageContext, request, session, application 4가지 모두 검색  --%>
<%=pageContext.findAttribute("이름") %>

</body>
</html>