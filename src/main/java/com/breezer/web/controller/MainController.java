package com.breezer.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.web.vo.UserVo;

@Controller
public class MainController {
	
	
	@RequestMapping({"/","/login"})
	public String index(HttpServletRequest request) {
		// 세션이 없는 경우
		
		
		HttpSession session = request.getSession();
		UserVo vo = (UserVo)session.getAttribute("authUser");
		if (vo != null ) {
			System.out.println("authUser is not null");
			return "tour/mytour";
		} else {
			System.out.println("authUser is null");
			return "user/index";
		}
		
		
		
		// 세션이 있는 경우
		// 
	}
	
}
