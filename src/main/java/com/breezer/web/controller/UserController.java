package com.breezer.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.AuthUser;
import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

@Controller("userController")
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// id 설정 페이지로 이동
	@RequestMapping("/join")
	public String join() {
		return "user/join";
	}
	
	// id 를 저장시키기  
	@RequestMapping("/setid")
	public String setId(
			HttpServletRequest request, 
			@ModelAttribute UserVo vo,
			@AuthUser UserVo authUser,
			Model model) {
		
		// fbid 를 가져와 그곳에 id를 저장하고 authUser에 id 셋팅 
		vo.setFbId(authUser.getFbId());
		userService.setIdMessage(vo);
		authUser.setId(vo.getId());
		
		// 세션에 id가 들어간 authUser로 변경 
		HttpSession session = request.getSession( true );
		session.setAttribute( "authUser", authUser );
		
		// id와 nickName 을 jsp 로 전송 
		model.addAttribute("id", authUser.getId());
		model.addAttribute("nickname", authUser.getNickName());
		
		
		return "tour/mytour";
		
	}
	
	
	
	
	
	

	
	
}
