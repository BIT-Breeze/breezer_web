package com.breezer.web.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.security.AuthUser;
import com.breezer.web.dto.JSONResult;
import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

@Controller("userAPIController")
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/getnaviinfo")
	public JSONResult getNaviInfo(
			@AuthUser UserVo authUser ) {

		// 세션 확인
		if (authUser == null) {
			return JSONResult.fail("login fail");
		}

		// userService.getNaviInfoMessage( authUser.getId() );
		
		
		return JSONResult.success(authUser.getId());
	}
	

}










