package com.breezer.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.web.vo.UserVo;

@Controller
public class MainController {

	//로그인 화면
	@RequestMapping({ "/", "/login" })
	public String index(
			HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		//세션의 authUser 가져오기
		HttpSession session = request.getSession();
		UserVo vo = (UserVo) session.getAttribute("authUser");
		
		
		
		if (vo != null) {
			// 세션이 있다면
			System.out.println("Main : authUser is exist");
			if (vo.getId() == null) {
				// id가 설정되어 있는지 확인 - 없으면 아이디 설정창으로 이동
				return "user/join";
			} 
			// id가 설정되어있으면  breezer/id 로 이동 
			response.sendRedirect(request.getContextPath() + "/"+vo.getId());
			return "tour/mytour";
		} else {
			//세션이 없는 경우
			System.out.println("Main : authUser is null");
			return "user/index";
		}

	}

}
