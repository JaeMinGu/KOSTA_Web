package kr.or.kosta.spring.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView(); 
		
		String message = "Spring MVC 모듈 테스트입니다...";
		mav.addObject("message", message);
		mav.setViewName("hello");
//		mav.setView("hello.jsp");//기존작성방식
		return mav;
	}
	
}
