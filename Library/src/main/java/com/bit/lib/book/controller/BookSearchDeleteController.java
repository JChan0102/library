package com.bit.lib.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/book/searchDeleteBook")
public class BookSearchDeleteController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String searchBookList() {
		return "admin/book/searchBookDeleteView";
	}
}
