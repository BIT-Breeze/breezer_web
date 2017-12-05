package com.breezer.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

@Controller("userController")
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/breezer_join_page")
	public String breezerPage() {
		return "user/breezer_join";
	}
	
	@RequestMapping( value="/breezer_join", method=RequestMethod.POST)
	public String breezerJoin( HttpServletRequest request, @ModelAttribute UserVo vo) {
		
		//userService.joinMessage(vo);
		
		
		HttpSession session = request.getSession( true );
		session.setAttribute( "authUser", vo );
		
		
		return "user/joinsuccess";
	}
	
	

	
	
}
