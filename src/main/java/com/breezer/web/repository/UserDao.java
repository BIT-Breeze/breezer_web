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
	
	
	public UserVo getUserByFbId(UserVo vo) {
		UserVo result = sqlSession.selectOne("user.getByFbId", vo);
		return result;
	}
	
	public UserVo getUserById(UserVo vo) {
		UserVo result = sqlSession.selectOne("user.getById", vo);
		return result;
	}
	
	public int resetUser(UserVo vo) {
		return sqlSession.update("user.resetByFbId", vo);
	}
	
	public int setId(UserVo vo) {
		return sqlSession.update("user.setId", vo);
	}
}
