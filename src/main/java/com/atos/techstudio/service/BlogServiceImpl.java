package com.atos.techstudio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atos.techstudio.dao.BlogDao;
import com.atos.techstudio.model.Blog;

@Service("blogService")
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	public List<Blog> getBlogList() {
		return blogDao.getBlogList() ;
	}
	
}
