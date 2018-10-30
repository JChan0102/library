package com.bit.lib.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.lib.book.service.BookCheckCodeService;

@Controller
@RequestMapping("/admin/book/bookCodeCheck")
public class BookCheckCodeController {
	
	@Autowired
	private BookCheckCodeService service;
	
	@RequestMapping(method=RequestMethod.GET,produces = "text/json; charset=UTF-8")
	@ResponseBody
	public String bookCodeCheck(@RequestParam("book_code")String book_code) {
		String result = "{\"result\":\""+service.bookCodeCheck(book_code)+"\"}";
		System.out.println("컨트롤러"+result);
		return result;
	}
	
	//주석
}
