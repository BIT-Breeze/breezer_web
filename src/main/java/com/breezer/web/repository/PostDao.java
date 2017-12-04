package com.breezer.web.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public int insert() {
		return sqlSession.insert("post.insert");
	}
}
