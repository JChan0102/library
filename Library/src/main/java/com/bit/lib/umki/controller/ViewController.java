package com.bit.lib.umki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.lib.umki.model.ListInfo;
import com.bit.lib.umki.service.GetContentService;


@Controller
public class ViewController {
	
	@Autowired
	GetContentService service;
	
	@RequestMapping("member/home/view/{idx}")
	public ModelAndView View(@PathVariable("idx") int idx) {
		ModelAndView modelAndView = new ModelAndView();
		ListInfo listInfo = service.getContentIdx(idx);
		modelAndView.setViewName("member/list/view");
		modelAndView.addObject("listInfo", listInfo);
		
		return modelAndView;
	}
}
