package com.bit.lib.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/book/searchDeleteBook")
public class BookSearchDeleteController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String searchBookList() {
		return "admin/book/searchBookDeleteView";
	}
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView resultBookList(@RequestParam("optionCode")String option,
									   @RequestParam("keyword")String keyword) {
		
		
		return null;
	}
}
