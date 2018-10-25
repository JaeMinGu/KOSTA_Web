<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
      <div class="card">
        
        <c:choose>
			<c:when test="${empty cookie.loginId }">
				<form action="<%= application.getContextPath() %>/user/login.jsp">
		            <div>
			            <input type="text" id="userid" name="userid" placeholder="Identifier..."> 
			            <input type="password" id="passwd" name="passwd" placeholder="Password..."> 
			            <input type="submit" value="Login">
		            </div>
	            </form>
			</c:when>
			<c:otherwise>
				<div>
					<p>${cookie.loginId.value }´Ô ·Î±×ÀÎ Áß....</p>
					<input type="submit" value= "Logout">
				</div>
			</c:otherwise>
        </c:choose>
      </div>


    <div class="card">
      <h3>Popular Post</h3>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
    </div>
    <div class="card">
      <h3>Follow Me</h3>
      <p>Some text..</p>
    </div>
