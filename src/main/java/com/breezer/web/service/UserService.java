package com.breezer.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezer.web.repository.UserDao;
import com.breezer.web.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	// 전체적인 로그인
	public UserVo loginMessage(UserVo vo) {
		// id 로 유저가 존재하는지 채크
		UserVo getVo = userDao.getUserByFbId(vo);
		
		if ( getVo != null) {
			// 있으면 token, expiresIn 을 업데이트
			System.out.println("userService id is already exist");
			
			userDao.resetUser(getVo);
			return getVo;
		} else {
			// 없으면 joinMessage
			System.out.println("userService id is not exist - join");
			userDao.joinUser(vo);
			return vo;
		}
	}
	
	// Id로 유저정보 가져오기 
	public UserVo getUserInfoMessage(UserVo vo) {
		return userDao.getUserById(vo);
	}
	
	
	public boolean setIdMessage(UserVo vo) {
		
		return userDao.setId(vo) == 1;
	}
	
	
	




}
