package com.breezer.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezer.web.repository.UserDao;
import com.breezer.web.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	
	public boolean joinMessage(UserVo vo) {
		return userDao.insert(vo) == 1;
	}
	
	public UserVo getUser(String ID, String PW) {
		
		UserVo vo = userDao.getUser(ID, PW);
		return vo;
	}
}
