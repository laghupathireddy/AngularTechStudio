package com.atos.techstudio.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.atos.techstudio.model.Blog;
import com.atos.techstudio.utils.Utils;

@Repository("blogDao")
public class BlogDaoImpl implements BlogDao {
	
	@Override
	public List<Blog> getBlogList() {
		System.out.println("blog list in dao");
		return Utils.getBlogList();
	}
	
}
