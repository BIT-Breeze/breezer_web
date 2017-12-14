package com.breezer.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.Auth;
import com.breezer.security.AuthUser;
import com.breezer.web.service.TourService;
import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

@Controller
@RequestMapping("/{id}")
public class TourController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private TourService tourService;
	
	
	// breezer/{id} : mytour 페이지 이동 
	@RequestMapping("")
	public String index(
			@PathVariable String id,
			@AuthUser UserVo authUser,
			Model model ) {
		
		// 세션이 없다면
		if (authUser == null) {
			return "user/index";
		} 
		// 세션이 있지만 id가 없다면 
		else if (authUser.getId()==null) {
			return "user/join";
		}
		
		//id에 대한 유저 정보를 가져온다 
		UserVo vo = new UserVo();
		vo.setId(id);
		UserVo userVo = userService.getUserInfoMessage(vo);
		
		// 페이지로 id와 닉네임을 보내준다
		model.addAttribute("id", userVo.getId());
		model.addAttribute("nickname", userVo.getNickName());
		
		return "tour/mytour";
	}
	
	// tour add 페이지 이동
	@Auth
	@RequestMapping("/add")
	public String add( 
			@AuthUser UserVo authUser ) {
		
		return "tour/add_test";
	}
	
	
	
	
	
	@RequestMapping("/mytour")
	public String mytour( 
			@PathVariable String id,
			@AuthUser UserVo authUser ) {
		
		System.out.println("{id} : "+id);
		// 세션 확인 
		if (authUser == null) {
			return "user/index";
		}
		
		return "tour/mytour";
	}
	
	
}
