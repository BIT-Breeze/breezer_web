package com.breezer.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.Auth;
import com.breezer.security.AuthUser;
import com.breezer.web.vo.UserVo;

@Controller
@RequestMapping("/{id}")
public class TourController {

	@Autowired
	
	
	@RequestMapping("")
	public String index(
			@PathVariable String id,
			Model model ) {
		
		//여기서 id를 가지고 해당 투어 주인의 정보를 가져온뒤 뿌려준다 
		//UserVo userVo = ~
		
		return "tour/mytour";
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
	
	@Auth
	@RequestMapping("/add")
	public String add( 
			@AuthUser UserVo authUser ) {
		
		
		return "tour/add_test";
	}
	
	
}
