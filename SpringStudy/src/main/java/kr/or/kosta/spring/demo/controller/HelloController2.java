package kr.or.kosta.spring.demo.controller;

import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * spring 2.5 이후 세부 컨트롤러 
 */

@Controller
@RequestMapping("/demo")
public class HelloController2 {
	
	@RequestMapping(value = "/hello") //요청url과 세부controller를 mapping
	public String hello(Model model) {
		String message = "Spring MVC 모듈 테스트입니다...";
		model.addAttribute("message", message);
		
		return "demo/hello"; //view이름, jsp경로 return 
	}
	
	@RequestMapping(value = "/today") 
	public String today(Model model) {
		Calendar cal = Calendar.getInstance(); 
		String today = String.format("%1$tF %1$tT", cal);
		model.addAttribute("today", today);
		
		return "demo/today"; 
	}
	
	@RequestMapping(value = "/find", params="gender=woman") 
	public String admin(Model model) {
		model.addAttribute("message", "관리자 화면입니다......");
		
		return "demo/admin"; 
	}
	
	
	
}


