<%@ page contentType="text/html; charset=utf-8" %>

<%
String id = request.getParameter("userid");

if(id != null){//로그인 
  session.setAttribute("id", id); 
} else{// 로그아웃 
 session.invalidate();
}

response.sendRedirect("index.jsp");
%> 


