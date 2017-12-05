package com.breezer.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.breezer.web.vo.UserVo;

@Controller
@RequestMapping("/tour")
public class TourController {

	@RequestMapping("/mytour")
	public String mytour(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		UserVo vo = (UserVo)session.getAttribute("authUser");
		if (vo != null ) {
			System.out.println("/tour/mytour authUser is not null");
			return "tour/mytour";
		} else {
			System.out.println("/tour/mytour authUser is null");
			return "user/index";
		}
		
		
	}
}
