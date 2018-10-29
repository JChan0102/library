package com.bit.lib.umki.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.lib.umki.model.ListInfo;
import com.bit.lib.umki.model.ReplyInfo;
import com.bit.lib.umki.service.GetContentService;
import com.bit.lib.umki.service.GetWriteContentService;


@Controller
public class ViewController {
	
	@Autowired
	GetContentService service;
	@Autowired
	GetWriteContentService service2;
	
	@RequestMapping("member/home/view")
	public ModelAndView view(@RequestParam("idx") int idx) {
		ModelAndView modelAndView = new ModelAndView();
		ListInfo listInfo = service.getContentIdx(idx);
		modelAndView.setViewName("member/list/view");
		modelAndView.addObject("listInfo", listInfo);
		
		return modelAndView;
	}
	
	@RequestMapping("member/home/view")
	@ResponseBody
	public List<ReplyInfo> reply(@RequestParam("idx") int idx) {
		List<ReplyInfo> replyInfo = service2.getReplyContent(idx); //댓글처리
		return replyInfo;
	}
}
