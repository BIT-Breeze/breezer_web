package com.breezer.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezer.web.repository.PostDao;

@Service
public class PostService {

	@Autowired
	private PostDao postDao;
	
	public boolean uploadMessage() {
		return postDao.insert() == 1;
	}
}
