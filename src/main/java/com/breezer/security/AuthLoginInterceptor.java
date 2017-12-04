package com.breezer.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;

public class AuthLoginInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private UserService userService;
	
	@Override
	public boolean preHandle(
		HttpServletRequest request, 
		HttpServletResponse response, 
		Object handler)
		throws Exception {

		String ID = request.getParameter( "ID" );
		String PW = request.getParameter( "PW" );
		
//		ApplicationContext ac = 
//		WebApplicationContextUtils.
//		getWebApplicationContext(request.getServletContext());
//		UserService userService = 
//				ac.getBean( UserService.class );
		
		UserVo userVo = userService.getUser(ID, PW);
		
		if( userVo == null ) {
			System.out.println("authLogin fail");
			response.sendRedirect( request.getContextPath() + "/" );
			return false;
		}
		
		System.out.println("authLogin success");
		// session 처리
		HttpSession session = request.getSession( true );
		session.setAttribute( "authUser", userVo );
		response.sendRedirect( request.getContextPath() +"/tour/mytour" );

		return false;
	}

}
