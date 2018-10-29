package com.bit.lib.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/memberAccount/myBook")
public class MemberMyBookController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getAdmimMemberAccRegForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/member/memberAccount/myBook");
		return modelAndView;
	}
}
