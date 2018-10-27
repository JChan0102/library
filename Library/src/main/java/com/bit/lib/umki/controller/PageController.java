package com.bit.lib.umki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.lib.umki.service.GetPageService;

@Controller
public class PageController {
	
	@Autowired
	GetPageService service;
	
	@RequestMapping("/member/home/view/page")
	public String list(@RequestParam("idx") int idx) {
		String page = service.getPage(idx);
		
		return "redirect:/member/home/list?page="+page+"";
	}

}
