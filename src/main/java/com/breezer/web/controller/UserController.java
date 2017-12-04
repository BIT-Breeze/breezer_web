package com.breezer.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
//	@RequestMapping("/login")
//	public String login() {
//		
//		return "user/index";
//	}
	
	@RequestMapping("/breezer_join")
	public String breezer() {
		return "user/breezer_join";
	}
	
	
}
