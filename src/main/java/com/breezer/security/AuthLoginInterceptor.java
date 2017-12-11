package com.breezer.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.breezer.web.dto.JSONResult;
import com.breezer.web.service.UserService;
import com.breezer.web.vo.UserVo;
import com.fasterxml.jackson.databind.ObjectMapper;

public class AuthLoginInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private UserService userService;
	
	@Override
	public boolean preHandle( 
		HttpServletRequest request, 
		HttpServletResponse response, 
		Object handler
		)
		throws Exception {
		


		UserVo vo = new UserVo();
		vo.setId(request.getParameter( "id" ));
		vo.setNickName(request.getParameter( "nickName"));
		vo.setToken(request.getParameter( "token" ));
		vo.setSignedRequest(request.getParameter("signedRequest"));
		vo.setExpiresIn(request.getParameter( "expiresIn" ));
		vo.setEmail(request.getParameter( "email" ));
		vo.setGender(request.getParameter( "gender" ));
		vo.setAgeRange(request.getParameter( "ageRange" ));
		vo.setLocale(request.getParameter( "locale" ));
		vo.setPictureUrl(request.getParameter( "pictureUrl" ));

		
		
		System.out.println("auth/user/login vo = " + vo );
		UserVo userVo = userService.loginMessage(vo);
		
		if( userVo == null ) {
			System.out.println("authLogin fail");
			//response.sendRedirect( request.getContextPath() + "/" );
			
			JSONResult jsonResult = JSONResult.fail("login fail");
			String json = new ObjectMapper().writeValueAsString( jsonResult );
		
			response.setContentType( "application/json; charset=utf-8" );
			response.getWriter().print( json );
			return false;
		}
		
		System.out.println("authLogin success");
		// session 처리
		HttpSession session = request.getSession( true );
		session.setAttribute( "authUser", userVo );
		
		//response.sendRedirect( request.getContextPath() +"/tour/mytour" );

		
		JSONResult jsonResult = JSONResult.success("login success");
		String json = new ObjectMapper().writeValueAsString( jsonResult );
	
		response.setContentType( "application/json; charset=utf-8" );
		response.getWriter().print( json );
		
		
		
		return false;
	}

}
