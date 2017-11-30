package com.breezer.web.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezer.web.vo.TestVo;

@Repository
public class TestRepository {

	
	@Autowired
	private SqlSession sqlSession;
	
	
	public int insert(TestVo vo) {
		
		return sqlSession.insert("test.inserttest", vo);
	}
}


