package com.breezer.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.AuthUser;
import com.breezer.web.vo.UserVo;

@Controller("/SNSController")
@RequestMapping("/sns")
public class SNSController {

	@RequestMapping("")
	public String main(
			@AuthUser UserVo authUser) {

		// 세션 확인
		if (authUser == null) {
			return "user/index";
		}
		
		return "sns/index";
	}
}
