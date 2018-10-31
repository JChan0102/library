package com.bit.lib.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bit.lib.book.model.BookInfo;
import com.bit.lib.book.service.BookUserViewService;

@Controller
@RequestMapping("/member/book/bookView")
public class BookUserViewController {
	
	@Autowired
	private BookUserViewService service;
	
	
	@RequestMapping(method= {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView bookView(@RequestParam("book_isbn")String book_isbn) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("member/book/bookView");
		
		try {
			
			BookInfo bookInfo = service.bookView(book_isbn);
			String bookExist = service.bookExist(book_isbn);
			List<BookInfo> list = service.bookCodeList(book_isbn);
			
			modelAndView.addObject("bookInfo", bookInfo);
			modelAndView.addObject("bookExist", bookExist);
			modelAndView.addObject("bookCodeList", list);
			
		} catch (Exception e) {}
		
		return modelAndView;
	}
}
