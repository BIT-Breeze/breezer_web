package com.breezer.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezer.web.repository.TestRepository;
import com.breezer.web.vo.TestVo;

@Service
public class TestService {

	@Autowired
	private TestRepository testRepository;
	
	
	public boolean insertMessage(TestVo vo) {
		
		
		return testRepository.insert(vo) == 1;
	}
}
