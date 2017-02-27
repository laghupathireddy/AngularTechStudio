package com.atos.techstudio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController {

	  @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String getIndexPage() {
		  System.out.println("index controller for index");
	        return "index";
	    }
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String getLoginPage() {
		  System.out.println("index controller for login");
	        return "login";
	    }
	  @RequestMapping(value = "/home", method = RequestMethod.GET)
	    public String getHomePage() {
		  System.out.println("index controller for home");
	        return "home";
	    }
	  @RequestMapping(value = "/blog", method = RequestMethod.GET)
	    public String getBlogPage() {
		  System.out.println("index controller for blog");
	        return "blog";
	    }
	  @RequestMapping(value = "/enquiry", method = RequestMethod.GET)
	    public String getEnquiryPage() {
		  System.out.println("index controller for enquiry");
	        return "enquiry";
	    }
	  @RequestMapping(value = "/notice", method = RequestMethod.GET)
	    public String getNoticePage() {
		  System.out.println("index controller for notice");
	        return "notice";
	    }
}