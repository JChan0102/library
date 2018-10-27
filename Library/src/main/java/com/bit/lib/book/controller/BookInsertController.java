package com.bit.lib.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.lib.book.model.BookInfo;

@Controller
@RequestMapping("/admin/book/bookInsert")
public class BookInsertController {
	
	@RequestMapping(method=RequestMethod.POST)
	public String bookInsert(BookInfo bookInfo) {
		
		return "";
	}
	
}
