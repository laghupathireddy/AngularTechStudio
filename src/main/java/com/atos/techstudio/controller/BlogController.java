package com.atos.techstudio.controller;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.techstudio.model.Blog;
import com.atos.techstudio.service.BlogService;
 
@Controller
public class BlogController {
 
    @Autowired
    BlogService blogService;  
    
    @RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String getBlogPage() {
		System.out.println("controller for blog page");
		return "blog";
	}
    
    @RequestMapping(value = "/blogList", method = RequestMethod.GET)
	public ResponseEntity<List<Blog>> getBlogList() {
		System.out.println("Blog controller to get list of data");
		List<Blog> result = blogService.getBlogList();		
		return new ResponseEntity<List<Blog>>(result, HttpStatus.OK);
	}
 
}