package com.breezer.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezer.web.repository.SNSDao;
import com.breezer.web.vo.SNSVo;

@Service
public class SNSService {
	
	@Autowired
	private SNSDao snsDao;
	
	public List<SNSVo> getListMessage(long idx) {
		List<SNSVo> list = snsDao.getList(idx);
		return list;
	}
}
