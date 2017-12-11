package com.breezer.web.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.web.vo.UserVo;

@Controller
public class SideController {
	
	@RequestMapping("/ajaxside")
	//핸들러 매핑 - 메소드 단독 매핑
	//타입 단독 매핑도 사용해 보자, /main/*이런식으로 매핑하고 /main/메소드이름 이런식으로 호출할 수 있다. 
	public String index(HttpServletRequest request) {
		// 세션이 없는 경우
		
		
		HttpSession session = request.getSession();
		UserVo vo = (UserVo)session.getAttribute("authUser");
		if (vo != null ) {
			System.out.println("authUser is not null");
			return "tour/mytour";
		} else {
			System.out.println("authUser is null");
			return "user/main";
		}

	}
	@RequestMapping("/sns/list")
	//핸들러 매핑 - 메소드 단독 매핑
	//타입 단독 매핑도 사용해 보자, /main/*이런식으로 매핑하고 /main/메소드이름 이런식으로 호출할 수 있다. 
	public String snsList() {
		// 세션이 없는 경우
		
		
			return "sns/list";
		}


	@RequestMapping("/location")
	//핸들러 매핑 - 메소드 단독 매핑
	//타입 단독 매핑도 사용해 보자, /main/*이런식으로 매핑하고 /main/메소드이름 이런식으로 호출할 수 있다. 
	public String toLocation() {
		// 세션이 없는 경우
		
		
			return  "location/search";
	}
}





