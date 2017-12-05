package com.breezer.web.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezer.web.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public int joinUser(UserVo vo) {
		return sqlSession.insert("user.insert", vo);
	}
	
	
	public UserVo getUser(UserVo vo) {
		
				
		
		UserVo result = sqlSession.selectOne("user.getByID", vo);
		return result;
	}
}
