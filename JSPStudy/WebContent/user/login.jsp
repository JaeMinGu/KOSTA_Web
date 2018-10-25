<%@page import="kr.or.kosta.jsp.dao.User"%>
<%@page import="kr.or.kosta.jsp.dao.UserDao"%>
<%@page import="kr.or.kosta.jsp.dao.JdbcDaoFactory"%>
<%@page import="kr.or.kosta.jsp.dao.DaoFactory"%>
<%@ page contentType="text/html; charset=utf-8" %>

<%
String id = request.getParameter("userid");
String pw = request.getParameter("passwd");

if(id != null){//로그인 시도 
	// UserDao를 이용한 회원가입 여부 체크 
	DaoFactory factory = new JdbcDaoFactory();
	UserDao dao = factory.getUserDao();
	User user = dao.certify(id, pw);

	if(user != null){
	  //회원인 경우 
      Cookie cookie = new Cookie("loginId",id);
      cookie.setMaxAge(60*60*24*30);
      cookie.setPath("/");
      response.addCookie(cookie);
	}else{
	  // 회원이 아닌 경우 
     System.out.println("회원 아님....");
  }
}
  else{ //로그아웃 
  Cookie[] cookies = request.getCookies();
  for(int i=0; i<cookies.length; i++){
    if(cookies[i].getName().equals("loginId")){
      cookies[i].setPath("/");
      cookies[i].setMaxAge(0);
      response.addCookie(cookies[i]);
    }
  }
}
  response.sendRedirect(application.getContextPath() + "/index.jsp");
%>


