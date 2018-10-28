package com.bit.lib.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.lib.book.service.BookDeleteService;

@Controller
@RequestMapping("/admin/book/bookDelete")
public class BookDeleteController {
	
	@Autowired
	private BookDeleteService service;
	
	@RequestMapping(method=RequestMethod.POST)
	public String bookDelete(@RequestParam("book_code")String book_code) {
		
		String url = "admin/book/bookDeleteOk";
		
		int resultCnt = service.bookDelete(book_code);
		
		if(resultCnt < 1) {
			url = "admin/book/bookDeleteFail";
		}
		
		return url;
	}
}
