package com.breezer.web.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.breezer.web.dto.JSONResult;
import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

@Controller("userAPIController")
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/login")
	public JSONResult login(@ModelAttribute UserVo vo) {
		
		System.out.println("/api/user/login vo = "+vo);
		userService.loginMessage(vo) ;
		
		return JSONResult.success("success");
	}
}
