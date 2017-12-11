package com.breezer.web.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezer.web.vo.SNSVo;

@Repository
public class SNSDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<SNSVo> getList(long idx) {
		List<SNSVo> list = sqlSession.selectList("sns.getsns", idx);
		System.out.println("SNSVO TEST = "+list);
		return list;
	}	
}
