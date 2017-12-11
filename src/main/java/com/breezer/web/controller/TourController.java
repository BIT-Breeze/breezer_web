package com.breezer.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.AuthUser;
import com.breezer.web.vo.UserVo;

@Controller
@RequestMapping("/tour")
public class TourController {

	@RequestMapping("/mytour")
	public String mytour( 
			@AuthUser UserVo authUser ) {
		
		// 세션 확인 
		if (authUser == null) {
			return "user/index";
		}
		
		
		return "tour/mytour";
		

		
		
	}
}
