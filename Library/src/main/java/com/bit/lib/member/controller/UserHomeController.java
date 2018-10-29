package com.bit.lib.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.lib.book.model.BookInfo;
import com.bit.lib.member.service.UserHomeService;

@Controller
public class UserHomeController {
	
	@Autowired
	private UserHomeService service;
	
	@RequestMapping("/member/home")
	public ModelAndView getMemberHome() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/member/home");
		
		List<BookInfo> list = service.bookNewList();
		modelAndView.addObject("bookList", list);
		return modelAndView;
	}
}
