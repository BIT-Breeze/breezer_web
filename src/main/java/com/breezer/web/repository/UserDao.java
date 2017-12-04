package com.breezer.web.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezer.web.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public int insert(UserVo vo) {
		return sqlSession.insert("user.insert", vo);
	}
	
	public UserVo getUser(String ID, String PW) {
		
		UserVo vo = new UserVo();
		vo.setID(ID);
		vo.setPW(PW);
		
		UserVo result = sqlSession.selectOne("user.getByIDAndPW", vo);
		return result;
	}
}
